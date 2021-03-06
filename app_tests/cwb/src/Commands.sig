(*
 *
 * $Log: Commands.sig,v $
 * Revision 1.2  1998/06/02 15:15:36  jont
 * Automatic checkin:
 * changed attribute _comment to ' * '
 *
 *
 *)
RCS "$Id: Commands.sig,v 1.2 1998/06/02 15:15:36 jont Exp $";
signature COMMANDS =
sig
    structure Ag   : AGENT
    structure L    : LOGIC
      sharing Ag.A = L.A
          and Ag.V = L.V

    datatype Command =
             BindAgent           of Ag.V.var * Ag.param list * Ag.agent
           | BindProp            of Ag.V.var * L.param list * L.prop
           | BindSet             of Ag.V.var * Ag.A.act list
           | BindRel             of Ag.V.var * (Ag.A.act * Ag.A.act) list

           | PrintAgent          of Ag.agent
           | PrintAgentGraph     of Ag.agent
           | PrintProp           of Ag.V.var
           | PrintSet            of Ag.V.var
           | PrintRel            of Ag.V.var

           | ClearEnv
           | PrintEnv

	    |Cwb                 of string
           | Help                of string
           | Use                 of string
	   | Output              of string
	    | CancelOutput
           | Save                of string
           | SaveMeije           of string * Ag.agent
           | SaveFC              of string * Ag.agent
           | Reduce
           | NoReduce
           | LocalMC
           | GlobalMC
           | Synthesis
           | Quit

           | Simulate            of Ag.agent
           | Sim_Sim             of Ag.agent
           | Sim_BindId          of Ag.V.var
           | Sim_Random          of int
           | Sim_Choose          of int
           | Sim_BackTrack       of int
           | Sim_Break           of Ag.A.act list
           | Sim_DelBreak        of Ag.A.act list
           | Sim_ListBreaks
           | Sim_Halt
           | Sim_Help
           | Sim_Menu
           | Sim_History

           | Trans               of Ag.agent
           | Initial             of Ag.agent
           | Derivative          of Ag.A.act * Ag.agent
           | Closure             of Ag.A.act list * Ag.agent
           | Observe             of int * Ag.agent
           | VisSeq              of int * Ag.agent
           | Random              of int * Ag.agent

           | PrefixForm          of Ag.agent
           | Stable              of Ag.agent
           | Diverges            of Ag.agent
           | FreeVariables       of Ag.agent
           | Sort                of Ag.agent
           | Size                of Ag.agent
           | StateSpace          of Ag.agent
           | StateSpaceExp       of Ag.agent
           | StateSpaceObs       of Ag.agent
           | FindDeadlock        of Ag.agent
           | FindDeadlockObs     of Ag.agent
           | FindInitial         of Ag.A.act list * Ag.agent
           | FindInitialObs      of Ag.A.act list * Ag.agent

           | Minimize            of Ag.V.var * Ag.agent
           | PrintBisim          of Ag.agent * Ag.agent
           | StrongPre           of Ag.agent * Ag.agent
           | StrongEq            of Ag.agent * Ag.agent
           | WeakPre             of Ag.agent * Ag.agent
           | WeakPreCong         of Ag.agent * Ag.agent
           | WeakEq              of Ag.agent * Ag.agent
           | WeakCong            of Ag.agent * Ag.agent
           | DivEq               of Ag.agent * Ag.agent
           | MayPre              of Ag.agent * Ag.agent
           | MayEq               of Ag.agent * Ag.agent
           | MustPre             of Ag.agent * Ag.agent
           | MustEq              of Ag.agent * Ag.agent
           | TestPre             of Ag.agent * Ag.agent
           | TestEq              of Ag.agent * Ag.agent
           | TwoThirdsPre        of Ag.agent * Ag.agent
           | TwoThirdsEq         of Ag.agent * Ag.agent
           | BranchingEq         of Ag.agent * Ag.agent
           | ContractionPre      of Ag.agent * Ag.agent

           | DistinguishStrong   of Ag.agent * Ag.agent
           | DistinguishWeak     of Ag.agent * Ag.agent
           | DistinguishTrace    of Ag.agent * Ag.agent
           | CheckProp           of Ag.agent * L.prop
end

