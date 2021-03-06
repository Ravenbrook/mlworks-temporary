(*
 *
 * $Log: commands.sig,v $
 * Revision 1.2  1998/06/11 13:10:48  jont
 * Automatic checkin:
 * changed attribute _comment to ' * '
 *
 *
 *)
signature COMMANDS =
sig
    structure A : SAGENT
    structure F : SFORMULA
    datatype SetCommand = Debug of int
    			| Threshold of int
    			| Rewrite of bool
    			| Remember of bool
    			| SetHelp
    datatype ShowCommand = SDebug
    			| SThreshold
    			| SRewrite
    			| SRemember
    			| SVersion
    			| STables
    			| SHelp
    			| SAll
    datatype HelpCommand = HAll | HAgent
    			| HClear | HDead | HEnv | HEq | HEqd | HInput | HSet | HShow
    			| HStep | HZtep | HSize | HTraces | HTrans | HWtrans | HWeq
    			| HWeqd | HHelp | HQuit | HTime | HNULL
    datatype Command = Agent of (string * A.agent)
      		     | Check of A.agent * F.formula
      		     | Clear of string
		     | Dead of A.agent
      		     | Environment of string
		     | Eq of A.agent * A.agent
		     | EqD of A.agent * A.agent * (A.T.N.name list)
		     | Input of string
		     | Set of SetCommand
		     | Show of ShowCommand
		     | Step of A.agent
		     | Ztep of A.agent
		     | Size of A.agent
		     | Traces of A.agent
	             | Transitions of A.agent
	             | Wtransitions of A.agent
		     | Weq of A.agent * A.agent
		     | WeqD of A.agent * A.agent * (A.T.N.name list)
		     | Help of HelpCommand
		     | Quit
		     | NULL
		     | Time of Command
    datatype Parse =   ParseCMD of Command
      		     | ParseAGENT of A.agent
		     | ParseFORMULA of F.formula
end
