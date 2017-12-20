! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
	.export	_Method_P_Kernel_HoareMutex_5
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
	.export	_Method_P_Kernel_HoareCondition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_TestHoareSemantic
	.export	_Method_P_Kernel_TestHoareSemantic_1
	.export	_Method_P_Kernel_TestHoareSemantic_2
	.export	_Method_P_Kernel_TestHoareSemantic_3
	.export	_Method_P_Kernel_TestHoareSemantic_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_testHoareSemantic
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
_P_Kernel_testHoareSemantic:
	.skip	41716
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_229:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_228:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_227:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_226:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_225:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_224:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_223:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_222:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_221:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_220:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_219:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_218:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_217:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_216:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_215:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_214:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_213:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_212:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_211:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_210:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_209:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_208:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_207:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_206:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_205:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_204:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_203:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_202:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_201:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_200:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_199:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_198:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_197:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_196:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_195:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_194:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_193:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_192:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_191:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_190:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_189:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_188:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_187:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_186:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_185:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_184:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_183:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_182:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_181:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_180:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_179:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_178:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_177:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_176:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_175:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_174:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_173:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_172:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_170:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_169:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_167:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_166:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_164:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_163:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_162:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_158:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_157:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_156:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_155:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_154:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_153:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_152:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_151:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_150:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_149:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_148:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_147:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_146:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_143:
	.word	32			! length
	.ascii	"Initializing Process Manager..\n "
	.align
_StringConst_142:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_141:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_140:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_139:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_138:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_136:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_135:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_134:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_133:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_132:
	.word	60			! length
	.ascii	"Cannot not remove any thread as the waiting list is empty:  "
	.align
_StringConst_131:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_130:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_127:
	.word	8			! length
	.ascii	"Thread J"
	.align
_StringConst_126:
	.word	8			! length
	.ascii	"Thread I"
	.align
_StringConst_125:
	.word	8			! length
	.ascii	"Thread H"
	.align
_StringConst_124:
	.word	8			! length
	.ascii	"Thread G"
	.align
_StringConst_123:
	.word	8			! length
	.ascii	"Thread F"
	.align
_StringConst_122:
	.word	8			! length
	.ascii	"Thread E"
	.align
_StringConst_121:
	.word	8			! length
	.ascii	"Thread D"
	.align
_StringConst_120:
	.word	8			! length
	.ascii	"Thread C"
	.align
_StringConst_119:
	.word	8			! length
	.ascii	"Thread B"
	.align
_StringConst_118:
	.word	8			! length
	.ascii	"Thread A"
	.align
_StringConst_117:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_116:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_113:
	.word	7			! length
	.ascii	"Thread:"
	.align
_StringConst_112:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_111:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_110:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_108:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_103:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_102:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_101:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_100:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_99:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_98:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_97:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_96:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_94:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_93:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_92:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_91:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_90:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_89:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_88:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_87:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_85:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_84:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_82:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_81:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_79:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_78:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_77:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_71:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_70:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_69:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_68:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_67:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_65:
	.word	17			! length
	.ascii	"\nnewCurrentPos = "
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_63:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_62:
	.word	17			! length
	.ascii	"\nSize in bytes = "
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\nVirtual address of buffer = "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_58:
	.word	17			! length
	.ascii	"\nSize in bytes = "
	.align
_StringConst_57:
	.word	29			! length
	.ascii	"\nVirtual address of buffer = "
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_53:
	.word	27			! length
	.ascii	"Virtual address of filename"
	.align
_StringConst_52:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_51:
	.word	40			! length
	.ascii	"ERROR attempting to GetStringFromVirtual"
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_49:
	.word	27			! length
	.ascii	"Virtual address of filename"
	.align
_StringConst_48:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked..\n"
	.align
_StringConst_47:
	.word	32			! length
	.ascii	"Error using GetStringFromVirtual"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"In Handle_Sys_Exec, is not able to get newAddrSpace\n"
	.align
_StringConst_45:
	.word	10			! length
	.ascii	"processID:"
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked\n"
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked\n"
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"Handle_Sys_Yeild invoked\n"
	.align
_StringConst_41:
	.word	30			! length
	.ascii	"Syscall shutdown was invoked.."
	.align
_StringConst_40:
	.word	13			! length
	.ascii	"returnStatus:"
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked\n"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	30			! length
	.ascii	"Could Not Open TestProgram1..!"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	22			! length
	.ascii	"UserLevelProgramThread"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x62a6aa57,r4		! myHashVal = 1655089751
	cmp	r3,r4
	be	_Label_237
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_237:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_238
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_238
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_238
_Label_238:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_239 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3325:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3325
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_243 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_244 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_243  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_245 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_246 = _temp_245 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_246 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3326:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3326
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_248 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_249 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_248  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_250 = _function_236_IdleFunction
	set	_function_236_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_251 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_250  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_252
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_253
	.word	-12
	.word	4
	.word	_Label_254
	.word	-16
	.word	4
	.word	_Label_255
	.word	-20
	.word	4
	.word	_Label_256
	.word	-24
	.word	4
	.word	_Label_257
	.word	-28
	.word	4
	.word	_Label_258
	.word	-32
	.word	4
	.word	_Label_259
	.word	-36
	.word	4
	.word	_Label_260
	.word	-40
	.word	4
	.word	_Label_261
	.word	-44
	.word	4
	.word	_Label_262
	.word	-48
	.word	4
	.word	_Label_263
	.word	-52
	.word	4
	.word	_Label_264
	.word	-56
	.word	4
	.word	_Label_265
	.word	-60
	.word	4
	.word	0
_Label_252:
	.ascii	"InitializeScheduler\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_236_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_236_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_266:
!	jmp	_Label_267
_Label_267:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_271 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_269 else goto _Label_270
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_270
	jmp	_Label_269
_Label_269:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_272
_Label_270:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_272:
! END WHILE...
	jmp	_Label_266
_Label_268:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_236_IdleFunction:
	.word	_sourceFileName
	.word	_Label_273
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_274
	.word	8
	.word	4
	.word	_Label_275
	.word	-12
	.word	4
	.word	_Label_276
	.word	-16
	.word	4
	.word	0
_Label_273:
	.ascii	"IdleFunction\0"
	.align
_Label_274:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_276:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_279 ) then goto _Label_278		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_278
!	jmp	_Label_277
_Label_277:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_281 [0 ] into _temp_282
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_280 = _temp_282		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_278:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_283 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_284:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_288 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_287  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_287 then goto _Label_286 else goto _Label_285
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_285
	jmp	_Label_286
_Label_285:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_289 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_290 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_284
_Label_286:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_293 ) then goto _Label_292		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_292
!	jmp	_Label_291
_Label_291:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_295 [0 ] into _temp_296
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_294 = _temp_296		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_297 = *_temp_298  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_297) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_299 = _temp_297 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_292:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_300
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_301
	.word	8
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	_Label_304
	.word	-24
	.word	4
	.word	_Label_305
	.word	-28
	.word	4
	.word	_Label_306
	.word	-32
	.word	4
	.word	_Label_307
	.word	-36
	.word	4
	.word	_Label_308
	.word	-40
	.word	4
	.word	_Label_309
	.word	-44
	.word	4
	.word	_Label_310
	.word	-48
	.word	4
	.word	_Label_311
	.word	-52
	.word	4
	.word	_Label_312
	.word	-9
	.word	1
	.word	_Label_313
	.word	-56
	.word	4
	.word	_Label_314
	.word	-60
	.word	4
	.word	_Label_315
	.word	-64
	.word	4
	.word	_Label_316
	.word	-68
	.word	4
	.word	_Label_317
	.word	-72
	.word	4
	.word	_Label_318
	.word	-76
	.word	4
	.word	_Label_319
	.word	-80
	.word	4
	.word	0
_Label_300:
	.ascii	"Run\0"
	.align
_Label_301:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_312:
	.byte	'C'
	.ascii	"_temp_287\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_318:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_319:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_320 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_321 = _function_235_ThreadPrintShort
	set	_function_235_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_322 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_321  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	_Label_327
	.word	-24
	.word	4
	.word	0
_Label_323:
	.ascii	"PrintReadyList\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_328  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_331 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_333
	.word	-12
	.word	4
	.word	_Label_334
	.word	-16
	.word	4
	.word	_Label_335
	.word	-20
	.word	4
	.word	_Label_336
	.word	-24
	.word	4
	.word	_Label_337
	.word	-28
	.word	4
	.word	_Label_338
	.word	-32
	.word	4
	.word	0
_Label_332:
	.ascii	"ThreadStartMain\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_337:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_338:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_339 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_340 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_342
	.word	-12
	.word	4
	.word	_Label_343
	.word	-16
	.word	4
	.word	_Label_344
	.word	-20
	.word	4
	.word	0
_Label_341:
	.ascii	"ThreadFinish\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_344:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_345 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_347		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_347
!	jmp	_Label_346
_Label_346:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_348 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_347:
! CALL STATEMENT...
!   _temp_351 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_352 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_353 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_354
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_355
	.word	8
	.word	4
	.word	_Label_356
	.word	-12
	.word	4
	.word	_Label_357
	.word	-16
	.word	4
	.word	_Label_358
	.word	-20
	.word	4
	.word	_Label_359
	.word	-24
	.word	4
	.word	_Label_360
	.word	-28
	.word	4
	.word	_Label_361
	.word	-32
	.word	4
	.word	_Label_362
	.word	-36
	.word	4
	.word	_Label_363
	.word	-40
	.word	4
	.word	0
_Label_354:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_355:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_363:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_365		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_365
!	jmp	_Label_364
_Label_364:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_366
_Label_365:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_366:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_367
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_368
	.word	8
	.word	4
	.word	_Label_369
	.word	-12
	.word	4
	.word	0
_Label_367:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_368:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_369:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_235_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_235_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	834,r13		! source line 834
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_373		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_373
!   _temp_372 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_374
_Label_373:
!   _temp_372 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_374:
!   if _temp_372 then goto _Label_371 else goto _Label_370
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_370
	jmp	_Label_371
_Label_370:
! THEN...
	mov	843,r13		! source line 843
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_375 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_371:
! CALL STATEMENT...
!   _temp_376 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_378 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_377 = *_temp_378  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_379 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	849,r13		! source line 849
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_388 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_387 = *_temp_388  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_382
	cmp	r1,2
	be	_Label_383
	cmp	r1,3
	be	_Label_384
	cmp	r1,4
	be	_Label_385
	cmp	r1,5
	be	_Label_386
	jmp	_Label_380
! CASE 1...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0BR",r10
	jmp	_Label_381
! CASE 2...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0BR",r10
	jmp	_Label_381
! CASE 3...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0BR",r10
	jmp	_Label_381
! CASE 4...
_Label_385:
! CALL STATEMENT...
!   _temp_392 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0BR",r10
	jmp	_Label_381
! CASE 5...
_Label_386:
! CALL STATEMENT...
!   _temp_393 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0BR",r10
	jmp	_Label_381
! DEFAULT CASE...
_Label_380:
! CALL STATEMENT...
!   _temp_394 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	866,r13		! source line 866
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_381:
! CALL STATEMENT...
!   _temp_395 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_396 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_397 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_235_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_398
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_399
	.word	8
	.word	4
	.word	_Label_400
	.word	-16
	.word	4
	.word	_Label_401
	.word	-20
	.word	4
	.word	_Label_402
	.word	-24
	.word	4
	.word	_Label_403
	.word	-28
	.word	4
	.word	_Label_404
	.word	-32
	.word	4
	.word	_Label_405
	.word	-36
	.word	4
	.word	_Label_406
	.word	-40
	.word	4
	.word	_Label_407
	.word	-44
	.word	4
	.word	_Label_408
	.word	-48
	.word	4
	.word	_Label_409
	.word	-52
	.word	4
	.word	_Label_410
	.word	-56
	.word	4
	.word	_Label_411
	.word	-60
	.word	4
	.word	_Label_412
	.word	-64
	.word	4
	.word	_Label_413
	.word	-68
	.word	4
	.word	_Label_414
	.word	-72
	.word	4
	.word	_Label_415
	.word	-76
	.word	4
	.word	_Label_416
	.word	-9
	.word	1
	.word	_Label_417
	.word	-80
	.word	4
	.word	0
_Label_398:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_399:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_416:
	.byte	'C'
	.ascii	"_temp_372\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_234_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_234_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	1204,r13		! source line 1204
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_418 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_234_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_419
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	-12
	.word	4
	.word	0
_Label_419:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	1214,r13		! source line 1214
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_422 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1220,r13		! source line 1220
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_423
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	-12
	.word	4
	.word	0
_Label_423:
	.ascii	"ProcessFinish\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	1226,r13		! source line 1226
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_426 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_427 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_427  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_428 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_429
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_430
	.word	-12
	.word	4
	.word	_Label_431
	.word	-16
	.word	4
	.word	_Label_432
	.word	-20
	.word	4
	.word	_Label_433
	.word	-24
	.word	4
	.word	0
_Label_429:
	.ascii	"InitFirstProcess\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_433:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	1242,r13		! source line 1242
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0AS",r10
	mov	1257,r13		! source line 1257
	mov	"\0\0SE",r10
!   _temp_434 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pNewPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0AS",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_435 = pNewPCB + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_435 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_436 = pNewPCB  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0AS",r10
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_437 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_438 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_437  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0IF",r10
!   if intIsZero (pOpenFile) then goto _Label_439
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_439
	jmp	_Label_440
_Label_439:
! THEN...
	mov	1265,r13		! source line 1265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_441 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1265,r13		! source line 1265
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_440:
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = pNewPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_442 = _temp_443		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (pOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_442  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
!   _temp_444 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=pOpenFile  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0AS",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = pNewPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_447 = _temp_446 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_445 = *_temp_447  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_445 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_448 [999 ] into _temp_449
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_449		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = pNewPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_451 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_452 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_453
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_454
	.word	8
	.word	4
	.word	_Label_455
	.word	-12
	.word	4
	.word	_Label_456
	.word	-16
	.word	4
	.word	_Label_457
	.word	-20
	.word	4
	.word	_Label_458
	.word	-24
	.word	4
	.word	_Label_459
	.word	-28
	.word	4
	.word	_Label_460
	.word	-32
	.word	4
	.word	_Label_461
	.word	-36
	.word	4
	.word	_Label_462
	.word	-40
	.word	4
	.word	_Label_463
	.word	-44
	.word	4
	.word	_Label_464
	.word	-48
	.word	4
	.word	_Label_465
	.word	-52
	.word	4
	.word	_Label_466
	.word	-56
	.word	4
	.word	_Label_467
	.word	-60
	.word	4
	.word	_Label_468
	.word	-64
	.word	4
	.word	_Label_469
	.word	-68
	.word	4
	.word	_Label_470
	.word	-72
	.word	4
	.word	_Label_471
	.word	-76
	.word	4
	.word	_Label_472
	.word	-80
	.word	4
	.word	_Label_473
	.word	-84
	.word	4
	.word	_Label_474
	.word	-88
	.word	4
	.word	_Label_475
	.word	-92
	.word	4
	.word	_Label_476
	.word	-96
	.word	4
	.word	_Label_477
	.word	-100
	.word	4
	.word	0
_Label_453:
	.ascii	"StartUserProcess\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"procnum\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_472:
	.byte	'P'
	.ascii	"pNewPCB\0"
	.align
_Label_473:
	.byte	'P'
	.ascii	"pOpenFile\0"
	.align
_Label_474:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_475:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_477:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_478
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_478:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	1948,r13		! source line 1948
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0IF",r10
!   _temp_482 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_483 = _temp_482 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_481 = *_temp_483  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_481 == 0 then goto _Label_480		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_480
!	jmp	_Label_479
_Label_479:
! THEN...
	mov	1963,r13		! source line 1963
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0SE",r10
!   _temp_485 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_486 = _temp_485 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_484 = *_temp_486  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_484) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_480:
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_487
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_488
	.word	-12
	.word	4
	.word	_Label_489
	.word	-16
	.word	4
	.word	_Label_490
	.word	-20
	.word	4
	.word	_Label_491
	.word	-24
	.word	4
	.word	_Label_492
	.word	-28
	.word	4
	.word	_Label_493
	.word	-32
	.word	4
	.word	0
_Label_487:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1970,r13		! source line 1970
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_494
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_494:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
	mov	1984,r13		! source line 1984
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_495 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_496
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_496:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
	mov	1996,r13		! source line 1996
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_498 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
	mov	2008,r13		! source line 2008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_501 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
	mov	2020,r13		! source line 2020
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_504 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_505
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_506
	.word	-12
	.word	4
	.word	0
_Label_505:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
	mov	2032,r13		! source line 2032
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_507 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_508
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_509
	.word	-12
	.word	4
	.word	0
_Label_508:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	2044,r13		! source line 2044
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_510 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	2056,r13		! source line 2056
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_513 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CA",r10
	call	_function_233_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_233_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
	mov	2068,r13		! source line 2068
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_516 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_517 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_521 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_520 = *_temp_521  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_520 == 0 then goto _Label_519		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_519
!	jmp	_Label_518
_Label_518:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_523 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_522 = *_temp_523  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_522) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_524
_Label_519:
! ELSE...
	mov	2081,r13		! source line 2081
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_525 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2081,r13		! source line 2081
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_524:
! SEND STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_233_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_526
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_527
	.word	8
	.word	4
	.word	_Label_528
	.word	-12
	.word	4
	.word	_Label_529
	.word	-16
	.word	4
	.word	_Label_530
	.word	-20
	.word	4
	.word	_Label_531
	.word	-24
	.word	4
	.word	_Label_532
	.word	-28
	.word	4
	.word	_Label_533
	.word	-32
	.word	4
	.word	_Label_534
	.word	-36
	.word	4
	.word	0
_Label_526:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_527:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
	mov	2094,r13		! source line 2094
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2115,r13		! source line 2115
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3350
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_535
_Label_3350:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_535
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_535
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_549,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_549:
	jmp	_Label_541	! 1:	
	jmp	_Label_548	! 2:	
	jmp	_Label_538	! 3:	
	jmp	_Label_537	! 4:	
	jmp	_Label_540	! 5:	
	jmp	_Label_539	! 6:	
	jmp	_Label_542	! 7:	
	jmp	_Label_543	! 8:	
	jmp	_Label_544	! 9:	
	jmp	_Label_545	! 10:	
	jmp	_Label_546	! 11:	
	jmp	_Label_547	! 12:	
! CASE 4...
_Label_537:
! RETURN STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0RE",r10
!   Call the function
	mov	2117,r13		! source line 2117
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_538:
! CALL STATEMENT...
!   Call the function
	mov	2119,r13		! source line 2119
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_539:
! RETURN STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2122,r13		! source line 2122
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_540:
! RETURN STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2124,r13		! source line 2124
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_541:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_542:
! RETURN STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_543:
! RETURN STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2131,r13		! source line 2131
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_544:
! RETURN STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2133,r13		! source line 2133
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_545:
! RETURN STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_546:
! RETURN STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2137,r13		! source line 2137
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_547:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2139,r13		! source line 2139
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_548:
! CALL STATEMENT...
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_535:
! CALL STATEMENT...
!   _temp_558 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2145,r13		! source line 2145
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2147,r13		! source line 2147
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_559 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2148,r13		! source line 2148
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_536:
! RETURN STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_560
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_561
	.word	8
	.word	4
	.word	_Label_562
	.word	12
	.word	4
	.word	_Label_563
	.word	16
	.word	4
	.word	_Label_564
	.word	20
	.word	4
	.word	_Label_565
	.word	24
	.word	4
	.word	_Label_566
	.word	-12
	.word	4
	.word	_Label_567
	.word	-16
	.word	4
	.word	_Label_568
	.word	-20
	.word	4
	.word	_Label_569
	.word	-24
	.word	4
	.word	_Label_570
	.word	-28
	.word	4
	.word	_Label_571
	.word	-32
	.word	4
	.word	_Label_572
	.word	-36
	.word	4
	.word	_Label_573
	.word	-40
	.word	4
	.word	_Label_574
	.word	-44
	.word	4
	.word	_Label_575
	.word	-48
	.word	4
	.word	0
_Label_560:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
	mov	2155,r13		! source line 2155
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_576 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2160,r13		! source line 2160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_577 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_578
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_579
	.word	8
	.word	4
	.word	_Label_580
	.word	-12
	.word	4
	.word	_Label_581
	.word	-16
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
	mov	2168,r13		! source line 2168
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_582 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2172,r13		! source line 2172
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_583
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_584
	.word	-12
	.word	4
	.word	0
_Label_583:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
	mov	2177,r13		! source line 2177
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_585 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2181,r13		! source line 2181
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_586
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_587
	.word	-12
	.word	4
	.word	0
_Label_586:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	2186,r13		! source line 2186
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_588 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2191,r13		! source line 2191
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_589
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_590
	.word	-12
	.word	4
	.word	0
_Label_589:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	2197,r13		! source line 2197
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_591 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2202,r13		! source line 2202
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_592 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2203,r13		! source line 2203
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2204,r13		! source line 2204
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2205,r13		! source line 2205
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_593
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_594
	.word	8
	.word	4
	.word	_Label_595
	.word	-12
	.word	4
	.word	_Label_596
	.word	-16
	.word	4
	.word	0
_Label_593:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_594:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	68,r1
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	2211,r13		! source line 2211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3357:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3357
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_598 = &strBuffer
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_599 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_598  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_599  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_604		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_604
!	jmp	_Label_603
_Label_603:
! THEN...
	mov	2237,r13		! source line 2237
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_604:
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   _temp_605 = &strBuffer
	add	r14,-172,r1
	store	r1,[r14+-100]
!   _temp_606 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_605  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0IF",r10
!   if intIsZero (pOpenFile) then goto _Label_607
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_607
	jmp	_Label_608
_Label_607:
! THEN...
	mov	2244,r13		! source line 2244
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_608:
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_609 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-92]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
	mov	2250,r13		! source line 2250
	mov	"\0\0SE",r10
!   _temp_610 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-88]
!   if intIsZero (pOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_610  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_612		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_612
!	jmp	_Label_611
_Label_611:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_613 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2252,r13		! source line 2252
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_612:
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_615 = *_temp_616  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _temp_615 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   _temp_614 = _temp_617		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-80]
!   _temp_618 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_614  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_619 = *_temp_620  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_619) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _temp_619 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_621 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-52],r4
	mov	23,r3
_Label_3358:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3358
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_622 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=pOpenFile  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_624 = *_temp_625  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _temp_624 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_627 = _temp_626 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_623 = *_temp_627  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_623 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_628 [999 ] into _temp_629
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_629		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2271,r13		! source line 2271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_630 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_631 = initSystemStackTop		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_631  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2276,r13		! source line 2276
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_632
	.word	4		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_633
	.word	8
	.word	4
	.word	_Label_634
	.word	-12
	.word	4
	.word	_Label_635
	.word	-16
	.word	4
	.word	_Label_636
	.word	-20
	.word	4
	.word	_Label_637
	.word	-24
	.word	4
	.word	_Label_638
	.word	-28
	.word	4
	.word	_Label_639
	.word	-32
	.word	4
	.word	_Label_640
	.word	-36
	.word	4
	.word	_Label_641
	.word	-40
	.word	4
	.word	_Label_642
	.word	-44
	.word	4
	.word	_Label_643
	.word	-48
	.word	4
	.word	_Label_644
	.word	-52
	.word	4
	.word	_Label_645
	.word	-56
	.word	4
	.word	_Label_646
	.word	-60
	.word	4
	.word	_Label_647
	.word	-64
	.word	4
	.word	_Label_648
	.word	-68
	.word	4
	.word	_Label_649
	.word	-72
	.word	4
	.word	_Label_650
	.word	-76
	.word	4
	.word	_Label_651
	.word	-80
	.word	4
	.word	_Label_652
	.word	-84
	.word	4
	.word	_Label_653
	.word	-88
	.word	4
	.word	_Label_654
	.word	-92
	.word	4
	.word	_Label_655
	.word	-96
	.word	4
	.word	_Label_656
	.word	-100
	.word	4
	.word	_Label_657
	.word	-104
	.word	4
	.word	_Label_658
	.word	-108
	.word	4
	.word	_Label_659
	.word	-112
	.word	4
	.word	_Label_660
	.word	-116
	.word	4
	.word	_Label_661
	.word	-120
	.word	4
	.word	_Label_662
	.word	-124
	.word	4
	.word	_Label_663
	.word	-128
	.word	4
	.word	_Label_664
	.word	-132
	.word	4
	.word	_Label_665
	.word	-136
	.word	4
	.word	_Label_666
	.word	-140
	.word	4
	.word	_Label_667
	.word	-144
	.word	4
	.word	_Label_668
	.word	-148
	.word	4
	.word	_Label_669
	.word	-172
	.word	24
	.word	_Label_670
	.word	-264
	.word	92
	.word	0
_Label_632:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_633:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"pOpenFile\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_667:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_668:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_669:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_670:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	22,r1
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	2283,r13		! source line 2283
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_671 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_672 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_673 = *_temp_674  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_673) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_675 = _temp_673 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_671  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_672  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_677		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_677
!	jmp	_Label_676
_Label_676:
! THEN...
	mov	2296,r13		! source line 2296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_678 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2296,r13		! source line 2296
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_677:
! CALL STATEMENT...
!   _temp_679 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2299,r13		! source line 2299
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_680 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   _temp_681 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_681  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2301,r13		! source line 2301
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_682 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2302,r13		! source line 2302
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_683 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2303,r13		! source line 2303
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2304,r13		! source line 2304
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_684
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_685
	.word	8
	.word	4
	.word	_Label_686
	.word	-12
	.word	4
	.word	_Label_687
	.word	-16
	.word	4
	.word	_Label_688
	.word	-20
	.word	4
	.word	_Label_689
	.word	-24
	.word	4
	.word	_Label_690
	.word	-28
	.word	4
	.word	_Label_691
	.word	-32
	.word	4
	.word	_Label_692
	.word	-36
	.word	4
	.word	_Label_693
	.word	-40
	.word	4
	.word	_Label_694
	.word	-44
	.word	4
	.word	_Label_695
	.word	-48
	.word	4
	.word	_Label_696
	.word	-52
	.word	4
	.word	_Label_697
	.word	-76
	.word	24
	.word	_Label_698
	.word	-80
	.word	4
	.word	0
_Label_684:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_697:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_698:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	22,r1
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	2312,r13		! source line 2312
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
	mov	2319,r13		! source line 2319
	mov	"\0\0SE",r10
!   _temp_699 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_700 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_702 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_701 = *_temp_702  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_701) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_703 = _temp_701 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_699  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_700  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_705		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_705
!	jmp	_Label_704
_Label_704:
! THEN...
	mov	2322,r13		! source line 2322
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_706 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2322,r13		! source line 2322
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_705:
! CALL STATEMENT...
!   _temp_707 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2325,r13		! source line 2325
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   _temp_709 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_709  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2327,r13		! source line 2327
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_710 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2328,r13		! source line 2328
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2329,r13		! source line 2329
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2330,r13		! source line 2330
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_712
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_713
	.word	8
	.word	4
	.word	_Label_714
	.word	-12
	.word	4
	.word	_Label_715
	.word	-16
	.word	4
	.word	_Label_716
	.word	-20
	.word	4
	.word	_Label_717
	.word	-24
	.word	4
	.word	_Label_718
	.word	-28
	.word	4
	.word	_Label_719
	.word	-32
	.word	4
	.word	_Label_720
	.word	-36
	.word	4
	.word	_Label_721
	.word	-40
	.word	4
	.word	_Label_722
	.word	-44
	.word	4
	.word	_Label_723
	.word	-48
	.word	4
	.word	_Label_724
	.word	-52
	.word	4
	.word	_Label_725
	.word	-76
	.word	24
	.word	_Label_726
	.word	-80
	.word	4
	.word	0
_Label_712:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_713:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_725:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_726:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	2338,r13		! source line 2338
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_727 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2343,r13		! source line 2343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_728 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2344,r13		! source line 2344
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2345,r13		! source line 2345
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_729 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2346,r13		! source line 2346
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_730 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2347,r13		! source line 2347
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_731 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2348,r13		! source line 2348
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2349,r13		! source line 2349
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2350,r13		! source line 2350
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_732
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_733
	.word	8
	.word	4
	.word	_Label_734
	.word	12
	.word	4
	.word	_Label_735
	.word	16
	.word	4
	.word	_Label_736
	.word	-12
	.word	4
	.word	_Label_737
	.word	-16
	.word	4
	.word	_Label_738
	.word	-20
	.word	4
	.word	_Label_739
	.word	-24
	.word	4
	.word	_Label_740
	.word	-28
	.word	4
	.word	0
_Label_732:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_733:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_734:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	2356,r13		! source line 2356
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_741 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2362,r13		! source line 2362
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2363,r13		! source line 2363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2364,r13		! source line 2364
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_743 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2365,r13		! source line 2365
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_744 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2366,r13		! source line 2366
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_745 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2367,r13		! source line 2367
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2368,r13		! source line 2368
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2369,r13		! source line 2369
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_746
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_747
	.word	8
	.word	4
	.word	_Label_748
	.word	12
	.word	4
	.word	_Label_749
	.word	16
	.word	4
	.word	_Label_750
	.word	-12
	.word	4
	.word	_Label_751
	.word	-16
	.word	4
	.word	_Label_752
	.word	-20
	.word	4
	.word	_Label_753
	.word	-24
	.word	4
	.word	_Label_754
	.word	-28
	.word	4
	.word	0
_Label_746:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_747:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_749:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
	mov	2375,r13		! source line 2375
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_755 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2379,r13		! source line 2379
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_756 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2380,r13		! source line 2380
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2381,r13		! source line 2381
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_757 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2382,r13		! source line 2382
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2383,r13		! source line 2383
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2384,r13		! source line 2384
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_758
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	12
	.word	4
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	0
_Label_758:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	2389,r13		! source line 2389
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_764 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2393,r13		! source line 2393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_765 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2394,r13		! source line 2394
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2395,r13		! source line 2395
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2396,r13		! source line 2396
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_766
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_767
	.word	8
	.word	4
	.word	_Label_768
	.word	-12
	.word	4
	.word	_Label_769
	.word	-16
	.word	4
	.word	0
_Label_766:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_767:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_232_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	2987,r13		! source line 2987
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_770 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_770  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0AS",r10
!   _temp_771 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_771) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_773 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_773) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_772 = *_temp_773  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_771 = _temp_772  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0AS",r10
!   _temp_774 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_776) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_774 = _temp_775  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0AS",r10
!   _temp_777 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_779) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_778 = *_temp_779  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_777 = _temp_778  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_232_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_780
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_781
	.word	8
	.word	4
	.word	_Label_782
	.word	12
	.word	4
	.word	_Label_783
	.word	-16
	.word	4
	.word	_Label_784
	.word	-9
	.word	1
	.word	_Label_785
	.word	-20
	.word	4
	.word	_Label_786
	.word	-24
	.word	4
	.word	_Label_787
	.word	-10
	.word	1
	.word	_Label_788
	.word	-28
	.word	4
	.word	_Label_789
	.word	-32
	.word	4
	.word	_Label_790
	.word	-11
	.word	1
	.word	_Label_791
	.word	-36
	.word	4
	.word	_Label_792
	.word	-12
	.word	1
	.word	_Label_793
	.word	-40
	.word	4
	.word	_Label_794
	.word	-44
	.word	4
	.word	0
_Label_780:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_781:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_784:
	.byte	'C'
	.ascii	"_temp_778\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_787:
	.byte	'C'
	.ascii	"_temp_775\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_790:
	.byte	'C'
	.ascii	"_temp_772\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_792:
	.byte	'C'
	.ascii	"_temp_770\0"
	.align
_Label_793:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_794:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_231_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_printFCB,r1
	push	r1
	mov	3,r1
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	2997,r13		! source line 2997
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_795 = *_temp_796  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2998,r13		! source line 2998
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2999,r13		! source line 2999
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_printFCB:
	.word	_sourceFileName
	.word	_Label_797
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_798
	.word	8
	.word	4
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	0
_Label_797:
	.ascii	"printFCB\0"
	.align
_Label_798:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_230_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_printOpen,r1
	push	r1
	mov	4,r1
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	3002,r13		! source line 3002
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_801 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3003,r13		! source line 3003
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_802 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_803 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3005,r13		! source line 3005
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_printOpen:
	.word	_sourceFileName
	.word	_Label_804
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_805
	.word	8
	.word	4
	.word	_Label_806
	.word	-12
	.word	4
	.word	_Label_807
	.word	-16
	.word	4
	.word	_Label_808
	.word	-20
	.word	4
	.word	0
_Label_804:
	.ascii	"printOpen\0"
	.align
_Label_805:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_809
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_809:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_810
	.word	_sourceFileName
	.word	128		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_810:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_812		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_812
!	jmp	_Label_811
_Label_811:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_813 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_812:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_815
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_817
	.word	12
	.word	4
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	0
_Label_815:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_816:
	.ascii	"Pself\0"
	.align
_Label_817:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_821		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_822 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_824		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_824
!	jmp	_Label_823
_Label_823:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_825 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_826 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_827 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_824:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_828
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_830
	.word	-12
	.word	4
	.word	_Label_831
	.word	-16
	.word	4
	.word	_Label_832
	.word	-20
	.word	4
	.word	_Label_833
	.word	-24
	.word	4
	.word	_Label_834
	.word	-28
	.word	4
	.word	_Label_835
	.word	-32
	.word	4
	.word	0
_Label_828:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_829:
	.ascii	"Pself\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_834:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_835:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_837		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_837
!	jmp	_Label_836
_Label_836:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_838 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_837:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_840		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_840
!	jmp	_Label_839
_Label_839:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_841 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_840:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_842
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_843
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_844
	.word	-12
	.word	4
	.word	_Label_845
	.word	-16
	.word	4
	.word	_Label_846
	.word	-20
	.word	4
	.word	0
_Label_842:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_843:
	.ascii	"Pself\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_847
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_847:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_848
	.word	_sourceFileName
	.word	141		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_848:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_850
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_852
	.word	-12
	.word	4
	.word	0
_Label_850:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_851:
	.ascii	"Pself\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_854		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_854
!	jmp	_Label_853
_Label_853:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_855 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_854:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_859		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_859
!   _temp_858 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_860
_Label_859:
!   _temp_858 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_860:
!   if _temp_858 then goto _Label_857 else goto _Label_856
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_856
	jmp	_Label_857
_Label_856:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_861
_Label_857:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_862 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_861:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_863
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_865
	.word	-16
	.word	4
	.word	_Label_866
	.word	-9
	.word	1
	.word	_Label_867
	.word	-20
	.word	4
	.word	_Label_868
	.word	-24
	.word	4
	.word	0
_Label_863:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_864:
	.ascii	"Pself\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_866:
	.byte	'C'
	.ascii	"_temp_858\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_868:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_870		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_870
!	jmp	_Label_869
_Label_869:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_871 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_870:
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_872 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_874		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_874
!	jmp	_Label_873
_Label_873:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_875 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_876 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_877
_Label_874:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_877:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_878
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_880
	.word	-12
	.word	4
	.word	_Label_881
	.word	-16
	.word	4
	.word	_Label_882
	.word	-20
	.word	4
	.word	_Label_883
	.word	-24
	.word	4
	.word	_Label_884
	.word	-28
	.word	4
	.word	_Label_885
	.word	-32
	.word	4
	.word	0
_Label_878:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_879:
	.ascii	"Pself\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_885:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_888		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_888
!	jmp	_Label_887
_Label_887:
!   _temp_886 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_889
_Label_888:
!   _temp_886 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_889:
!   ReturnResult: _temp_886  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_890
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_892
	.word	-9
	.word	1
	.word	0
_Label_890:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_891:
	.ascii	"Pself\0"
	.align
_Label_892:
	.byte	'C'
	.ascii	"_temp_886\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_893
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_893:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_894
	.word	_sourceFileName
	.word	155		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_894:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_896
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_898
	.word	-12
	.word	4
	.word	0
_Label_896:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_897:
	.ascii	"Pself\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_901  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_901 then goto _Label_900 else goto _Label_899
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_899
	jmp	_Label_900
_Label_899:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_902 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_902  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	392,r13		! source line 392
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_900:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_903 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_904
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_906
	.word	12
	.word	4
	.word	_Label_907
	.word	-16
	.word	4
	.word	_Label_908
	.word	-20
	.word	4
	.word	_Label_909
	.word	-9
	.word	1
	.word	_Label_910
	.word	-24
	.word	4
	.word	0
_Label_904:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_905:
	.ascii	"Pself\0"
	.align
_Label_906:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_909:
	.byte	'C'
	.ascii	"_temp_901\0"
	.align
_Label_910:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_913  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_913 then goto _Label_912 else goto _Label_911
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_911
	jmp	_Label_912
_Label_911:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_914 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_914  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	409,r13		! source line 409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_912:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_915 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_917		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_917
!	jmp	_Label_916
_Label_916:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_918 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_918 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_919 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_917:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_920
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_922
	.word	12
	.word	4
	.word	_Label_923
	.word	-16
	.word	4
	.word	_Label_924
	.word	-20
	.word	4
	.word	_Label_925
	.word	-24
	.word	4
	.word	_Label_926
	.word	-28
	.word	4
	.word	_Label_927
	.word	-9
	.word	1
	.word	_Label_928
	.word	-32
	.word	4
	.word	_Label_929
	.word	-36
	.word	4
	.word	0
_Label_920:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_921:
	.ascii	"Pself\0"
	.align
_Label_922:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_927:
	.byte	'C'
	.ascii	"_temp_913\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_929:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_932  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_932 then goto _Label_931 else goto _Label_930
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_930
	jmp	_Label_931
_Label_930:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_933 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_931:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_934:
!	jmp	_Label_935
_Label_935:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_937 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_938
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_938
	jmp	_Label_939
_Label_938:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_936
! END IF...
_Label_939:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_940 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_940 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_941 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_934
_Label_936:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_942
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_944
	.word	12
	.word	4
	.word	_Label_945
	.word	-16
	.word	4
	.word	_Label_946
	.word	-20
	.word	4
	.word	_Label_947
	.word	-24
	.word	4
	.word	_Label_948
	.word	-28
	.word	4
	.word	_Label_949
	.word	-9
	.word	1
	.word	_Label_950
	.word	-32
	.word	4
	.word	_Label_951
	.word	-36
	.word	4
	.word	0
_Label_942:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_943:
	.ascii	"Pself\0"
	.align
_Label_944:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_949:
	.byte	'C'
	.ascii	"_temp_932\0"
	.align
_Label_950:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_951:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_952
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_5	! 16:	GiveLock
	jmp	_Method_P_Kernel_HoareMutex_4	! 20:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_952:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_953
	.word	_sourceFileName
	.word	176		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_953:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	464,r13		! source line 464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_955
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_957
	.word	-12
	.word	4
	.word	0
_Label_955:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_956:
	.ascii	"Pself\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	6,r1
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	470,r13		! source line 470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_959		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_959
!	jmp	_Label_958
_Label_958:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_960 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	474,r13		! source line 474
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_959:
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_964		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_964
!   _temp_963 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_965
_Label_964:
!   _temp_963 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_965:
!   if _temp_963 then goto _Label_962 else goto _Label_961
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_961
	jmp	_Label_962
_Label_961:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_966
_Label_962:
! ELSE...
	mov	480,r13		! source line 480
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0SE",r10
!   _temp_967 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_966:
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_968
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_970
	.word	-16
	.word	4
	.word	_Label_971
	.word	-9
	.word	1
	.word	_Label_972
	.word	-20
	.word	4
	.word	_Label_973
	.word	-24
	.word	4
	.word	0
_Label_968:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_969:
	.ascii	"Pself\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_971:
	.byte	'C'
	.ascii	"_temp_963\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_973:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	8,r1
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	488,r13		! source line 488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_975		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_975
!	jmp	_Label_974
_Label_974:
! THEN...
	mov	493,r13		! source line 493
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_976 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	493,r13		! source line 493
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_975:
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
	mov	496,r13		! source line 496
	mov	"\0\0SE",r10
!   _temp_977 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_979		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	498,r13		! source line 498
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_980 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0SE",r10
!   _temp_981 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_982
_Label_979:
! ELSE...
	mov	502,r13		! source line 502
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_982:
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_983
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	-12
	.word	4
	.word	_Label_986
	.word	-16
	.word	4
	.word	_Label_987
	.word	-20
	.word	4
	.word	_Label_988
	.word	-24
	.word	4
	.word	_Label_989
	.word	-28
	.word	4
	.word	_Label_990
	.word	-32
	.word	4
	.word	0
_Label_983:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_989:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_990:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	509,r13		! source line 509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_993		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_993
!	jmp	_Label_992
_Label_992:
!   _temp_991 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_994
_Label_993:
!   _temp_991 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_994:
!   ReturnResult: _temp_991  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_995
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_997
	.word	-9
	.word	1
	.word	0
_Label_995:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_996:
	.ascii	"Pself\0"
	.align
_Label_997:
	.byte	'C'
	.ascii	"_temp_991\0"
	.align
! 
! ===============  METHOD GiveLock  ===============
! 
_Method_P_Kernel_HoareMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_5,r1
	push	r1
	mov	516,r13		! source line 516
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   heldBy = th		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_5:
	.word	_sourceFileName
	.word	_Label_998
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1000
	.word	12
	.word	4
	.word	0
_Label_998:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"GiveLock\0"
	.align
_Label_999:
	.ascii	"Pself\0"
	.align
_Label_1000:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_1001
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1001:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1002
	.word	_sourceFileName
	.word	199		! line number
	.word	36		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_1002:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	561,r13		! source line 561
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_1004
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1005
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1006
	.word	-12
	.word	4
	.word	0
_Label_1004:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1005:
	.ascii	"Pself\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
	mov	573,r13		! source line 573
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_1009  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1009 then goto _Label_1008 else goto _Label_1007
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1007
	jmp	_Label_1008
_Label_1007:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1010 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	574,r13		! source line 574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1008:
! ASSIGNMENT STATEMENT...
	mov	576,r13		! source line 576
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0SE",r10
!   _temp_1011 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	580,r13		! source line 580
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_1012
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1014
	.word	12
	.word	4
	.word	_Label_1015
	.word	-16
	.word	4
	.word	_Label_1016
	.word	-20
	.word	4
	.word	_Label_1017
	.word	-9
	.word	1
	.word	_Label_1018
	.word	-24
	.word	4
	.word	0
_Label_1012:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1013:
	.ascii	"Pself\0"
	.align
_Label_1014:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1017:
	.byte	'C'
	.ascii	"_temp_1009\0"
	.align
_Label_1018:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	9,r1
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	587,r13		! source line 587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0IF",r10
	mov	593,r13		! source line 593
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_1021  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1021 then goto _Label_1020 else goto _Label_1019
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1019
	jmp	_Label_1020
_Label_1019:
! THEN...
	mov	594,r13		! source line 594
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1022 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	594,r13		! source line 594
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1020:
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
	mov	597,r13		! source line 597
	mov	"\0\0SE",r10
!   _temp_1023 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1025		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	600,r13		! source line 600
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message GiveLock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1026 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0SE",r10
!   _temp_1027 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1025:
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_1028
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1030
	.word	12
	.word	4
	.word	_Label_1031
	.word	-16
	.word	4
	.word	_Label_1032
	.word	-20
	.word	4
	.word	_Label_1033
	.word	-24
	.word	4
	.word	_Label_1034
	.word	-28
	.word	4
	.word	_Label_1035
	.word	-9
	.word	1
	.word	_Label_1036
	.word	-32
	.word	4
	.word	_Label_1037
	.word	-36
	.word	4
	.word	0
_Label_1028:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1029:
	.ascii	"Pself\0"
	.align
_Label_1030:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1035:
	.byte	'C'
	.ascii	"_temp_1021\0"
	.align
_Label_1036:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1037:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	9,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0IF",r10
	mov	618,r13		! source line 618
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_1040  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1040 then goto _Label_1039 else goto _Label_1038
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1038
	jmp	_Label_1039
_Label_1038:
! THEN...
	mov	619,r13		! source line 619
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1039:
! ASSIGNMENT STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0WH",r10
_Label_1042:
!	jmp	_Label_1043
_Label_1043:
	mov	622,r13		! source line 622
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0AS",r10
	mov	623,r13		! source line 623
	mov	"\0\0SE",r10
!   _temp_1045 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1046
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1046
	jmp	_Label_1047
_Label_1046:
! THEN...
	mov	625,r13		! source line 625
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0BR",r10
	jmp	_Label_1044
! END IF...
_Label_1047:
! ASSIGNMENT STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1048 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0SE",r10
!   _temp_1049 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1042
_Label_1044:
! ASSIGNMENT STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_1050
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1052
	.word	12
	.word	4
	.word	_Label_1053
	.word	-16
	.word	4
	.word	_Label_1054
	.word	-20
	.word	4
	.word	_Label_1055
	.word	-24
	.word	4
	.word	_Label_1056
	.word	-28
	.word	4
	.word	_Label_1057
	.word	-9
	.word	1
	.word	_Label_1058
	.word	-32
	.word	4
	.word	_Label_1059
	.word	-36
	.word	4
	.word	0
_Label_1050:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1051:
	.ascii	"Pself\0"
	.align
_Label_1052:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1057:
	.byte	'C'
	.ascii	"_temp_1040\0"
	.align
_Label_1058:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1059:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1060
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1060:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1061
	.word	_sourceFileName
	.word	213		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1061:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	641,r13		! source line 641
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0AS",r10
!   _temp_1062 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1062) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1062 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0AS",r10
!   _temp_1063 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1063 [0 ] into _temp_1064
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1064 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0AS",r10
!   _temp_1065 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1065 [999 ] into _temp_1066
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1066 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0AS",r10
!   _temp_1067 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1067 [999 ] into _temp_1068
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1068		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0AS",r10
!   _temp_1069 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1071 = &_temp_1070
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1071 = _temp_1071 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1073:
!   Data Move: *_temp_1071 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1071 = _temp_1071 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1072 = _temp_1072 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1072) then goto _Label_1073
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1073
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1074 = &_temp_1070
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3388
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3388:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1069 = *_temp_1074  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3389:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3389
! ASSIGNMENT STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0AS",r10
!   _temp_1075 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1077 = &_temp_1076
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1077 = _temp_1077 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1079:
!   Data Move: *_temp_1077 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1077 = _temp_1077 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1078 = _temp_1078 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1078) then goto _Label_1079
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1079
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1080 = &_temp_1076
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3390
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3390:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1075 = *_temp_1080  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3391:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3391
! RETURN STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1081
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1083
	.word	12
	.word	4
	.word	_Label_1084
	.word	-12
	.word	4
	.word	_Label_1085
	.word	-16
	.word	4
	.word	_Label_1086
	.word	-20
	.word	4
	.word	_Label_1087
	.word	-84
	.word	64
	.word	_Label_1088
	.word	-88
	.word	4
	.word	_Label_1089
	.word	-92
	.word	4
	.word	_Label_1090
	.word	-96
	.word	4
	.word	_Label_1091
	.word	-100
	.word	4
	.word	_Label_1092
	.word	-156
	.word	56
	.word	_Label_1093
	.word	-160
	.word	4
	.word	_Label_1094
	.word	-164
	.word	4
	.word	_Label_1095
	.word	-168
	.word	4
	.word	_Label_1096
	.word	-172
	.word	4
	.word	_Label_1097
	.word	-176
	.word	4
	.word	_Label_1098
	.word	-180
	.word	4
	.word	_Label_1099
	.word	-184
	.word	4
	.word	_Label_1100
	.word	-188
	.word	4
	.word	0
_Label_1081:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1082:
	.ascii	"Pself\0"
	.align
_Label_1083:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	660,r13		! source line 660
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	676,r13		! source line 676
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1101  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	678,r13		! source line 678
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1103 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1102  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1104
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	12
	.word	4
	.word	_Label_1107
	.word	16
	.word	4
	.word	_Label_1108
	.word	-12
	.word	4
	.word	_Label_1109
	.word	-16
	.word	4
	.word	_Label_1110
	.word	-20
	.word	4
	.word	_Label_1111
	.word	-24
	.word	4
	.word	_Label_1112
	.word	-28
	.word	4
	.word	0
_Label_1104:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1107:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1111:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1112:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	684,r13		! source line 684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1115 == _P_Kernel_currentThread then goto _Label_1114		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1116 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	701,r13		! source line 701
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1114:
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1117 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1119		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1119
!	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	712,r13		! source line 712
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1121		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1121
!	jmp	_Label_1120
_Label_1120:
! THEN...
	mov	713,r13		! source line 713
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1122 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	713,r13		! source line 713
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1121:
! ASSIGNMENT STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1124 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1123  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1119:
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1125
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1127
	.word	-12
	.word	4
	.word	_Label_1128
	.word	-16
	.word	4
	.word	_Label_1129
	.word	-20
	.word	4
	.word	_Label_1130
	.word	-24
	.word	4
	.word	_Label_1131
	.word	-28
	.word	4
	.word	_Label_1132
	.word	-32
	.word	4
	.word	_Label_1133
	.word	-36
	.word	4
	.word	_Label_1134
	.word	-40
	.word	4
	.word	_Label_1135
	.word	-44
	.word	4
	.word	0
_Label_1125:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1126:
	.ascii	"Pself\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1133:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1135:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	724,r13		! source line 724
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1137		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1137
!	jmp	_Label_1136
_Label_1136:
! THEN...
	mov	737,r13		! source line 737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1138 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	737,r13		! source line 737
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1137:
! IF STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1141 == _P_Kernel_currentThread then goto _Label_1140		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1140
!	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	741,r13		! source line 741
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1142 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	741,r13		! source line 741
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1140:
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1143 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1144
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1144
	jmp	_Label_1145
_Label_1144:
! THEN...
	mov	749,r13		! source line 749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1146 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	749,r13		! source line 749
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1145:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1147
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1149
	.word	-12
	.word	4
	.word	_Label_1150
	.word	-16
	.word	4
	.word	_Label_1151
	.word	-20
	.word	4
	.word	_Label_1152
	.word	-24
	.word	4
	.word	_Label_1153
	.word	-28
	.word	4
	.word	_Label_1154
	.word	-32
	.word	4
	.word	0
_Label_1147:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1148:
	.ascii	"Pself\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1154:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	756,r13		! source line 756
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0IF",r10
!   _temp_1158 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1158 [0 ] into _temp_1159
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1157 = *_temp_1159  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1157 == 606348324 then goto _Label_1156		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1156
!	jmp	_Label_1155
_Label_1155:
! THEN...
	mov	763,r13		! source line 763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1160 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	763,r13		! source line 763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1161
_Label_1156:
! ELSE...
	mov	764,r13		! source line 764
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0IF",r10
!   _temp_1165 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1165 [999 ] into _temp_1166
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1164 = *_temp_1166  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1164 == 606348324 then goto _Label_1163		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1163
!	jmp	_Label_1162
_Label_1162:
! THEN...
	mov	765,r13		! source line 765
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1167 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	765,r13		! source line 765
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1163:
! END IF...
_Label_1161:
! RETURN STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1168
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1169
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1170
	.word	-12
	.word	4
	.word	_Label_1171
	.word	-16
	.word	4
	.word	_Label_1172
	.word	-20
	.word	4
	.word	_Label_1173
	.word	-24
	.word	4
	.word	_Label_1174
	.word	-28
	.word	4
	.word	_Label_1175
	.word	-32
	.word	4
	.word	_Label_1176
	.word	-36
	.word	4
	.word	_Label_1177
	.word	-40
	.word	4
	.word	0
_Label_1168:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1169:
	.ascii	"Pself\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	771,r13		! source line 771
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1178 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1179 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1181 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1182 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1187 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1188 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1187  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1183:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1188 then goto _Label_1186		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1186
_Label_1184:
	mov	784,r13		! source line 784
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1189 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1190 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1191 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1193 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1193 [i ] into _temp_1194
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1192 = *_temp_1194  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1195 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1197 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1197 [i ] into _temp_1198
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1196 = *_temp_1198  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1199 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1185:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1183
! END FOR
_Label_1186:
! CALL STATEMENT...
!   _temp_1200 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-116]
!   _temp_1201 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1201  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1202 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-108]
!   _temp_1204 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1204 [0 ] into _temp_1205
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1203 = _temp_1205		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1203  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	795,r13		! source line 795
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1208
	cmp	r1,2
	be	_Label_1209
	cmp	r1,3
	be	_Label_1210
	cmp	r1,4
	be	_Label_1211
	cmp	r1,5
	be	_Label_1212
	jmp	_Label_1206
! CASE 1...
_Label_1208:
! CALL STATEMENT...
!   _temp_1213 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 2...
_Label_1209:
! CALL STATEMENT...
!   _temp_1214 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 3...
_Label_1210:
! CALL STATEMENT...
!   _temp_1215 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 4...
_Label_1211:
! CALL STATEMENT...
!   _temp_1216 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 5...
_Label_1212:
! CALL STATEMENT...
!   _temp_1217 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0BR",r10
	jmp	_Label_1207
! DEFAULT CASE...
_Label_1206:
! CALL STATEMENT...
!   _temp_1218 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	812,r13		! source line 812
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1207:
! CALL STATEMENT...
!   _temp_1219 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1220 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1225 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1226 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1225  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1221:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1226 then goto _Label_1224		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1224
_Label_1222:
	mov	818,r13		! source line 818
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1227 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1228 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1229 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1231 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1231 [i ] into _temp_1232
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1230 = *_temp_1232  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1233 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1235 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1235 [i ] into _temp_1236
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1234 = *_temp_1236  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1234  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1237 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1223:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1221
! END FOR
_Label_1224:
! ASSIGNMENT STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1238
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1240
	.word	-12
	.word	4
	.word	_Label_1241
	.word	-16
	.word	4
	.word	_Label_1242
	.word	-20
	.word	4
	.word	_Label_1243
	.word	-24
	.word	4
	.word	_Label_1244
	.word	-28
	.word	4
	.word	_Label_1245
	.word	-32
	.word	4
	.word	_Label_1246
	.word	-36
	.word	4
	.word	_Label_1247
	.word	-40
	.word	4
	.word	_Label_1248
	.word	-44
	.word	4
	.word	_Label_1249
	.word	-48
	.word	4
	.word	_Label_1250
	.word	-52
	.word	4
	.word	_Label_1251
	.word	-56
	.word	4
	.word	_Label_1252
	.word	-60
	.word	4
	.word	_Label_1253
	.word	-64
	.word	4
	.word	_Label_1254
	.word	-68
	.word	4
	.word	_Label_1255
	.word	-72
	.word	4
	.word	_Label_1256
	.word	-76
	.word	4
	.word	_Label_1257
	.word	-80
	.word	4
	.word	_Label_1258
	.word	-84
	.word	4
	.word	_Label_1259
	.word	-88
	.word	4
	.word	_Label_1260
	.word	-92
	.word	4
	.word	_Label_1261
	.word	-96
	.word	4
	.word	_Label_1262
	.word	-100
	.word	4
	.word	_Label_1263
	.word	-104
	.word	4
	.word	_Label_1264
	.word	-108
	.word	4
	.word	_Label_1265
	.word	-112
	.word	4
	.word	_Label_1266
	.word	-116
	.word	4
	.word	_Label_1267
	.word	-120
	.word	4
	.word	_Label_1268
	.word	-124
	.word	4
	.word	_Label_1269
	.word	-128
	.word	4
	.word	_Label_1270
	.word	-132
	.word	4
	.word	_Label_1271
	.word	-136
	.word	4
	.word	_Label_1272
	.word	-140
	.word	4
	.word	_Label_1273
	.word	-144
	.word	4
	.word	_Label_1274
	.word	-148
	.word	4
	.word	_Label_1275
	.word	-152
	.word	4
	.word	_Label_1276
	.word	-156
	.word	4
	.word	_Label_1277
	.word	-160
	.word	4
	.word	_Label_1278
	.word	-164
	.word	4
	.word	_Label_1279
	.word	-168
	.word	4
	.word	_Label_1280
	.word	-172
	.word	4
	.word	_Label_1281
	.word	-176
	.word	4
	.word	_Label_1282
	.word	-180
	.word	4
	.word	_Label_1283
	.word	-184
	.word	4
	.word	_Label_1284
	.word	-188
	.word	4
	.word	_Label_1285
	.word	-192
	.word	4
	.word	_Label_1286
	.word	-196
	.word	4
	.word	0
_Label_1238:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1239:
	.ascii	"Pself\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1285:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1286:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1287
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1287:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1288
	.word	_sourceFileName
	.word	240		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1288:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	887,r13		! source line 887
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1289 = _StringConst_112
	set	_StringConst_112,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   _temp_1290 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1292 = &_temp_1291
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1292 = _temp_1292 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1294 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3398:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3398
!   _temp_1294 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1296:
!   Data Move: *_temp_1292 = _temp_1294  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3399:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3399
!   _temp_1292 = _temp_1292 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1293 = _temp_1293 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1293) then goto _Label_1296
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1296
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1297 = &_temp_1291
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3400
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3400:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1290 = *_temp_1297  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3401:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3401
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1301 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1302 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1307 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1308 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1307  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1303:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1308 then goto _Label_1306		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1306
_Label_1304:
	mov	915,r13		! source line 915
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1309 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   _temp_1310 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1310 [j ] into _temp_1311
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1309  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0AS",r10
!   _temp_1312 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1312 [j ] into _temp_1313
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1314 = _temp_1313 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1314 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1316 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1316 [j ] into _temp_1317
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1315 = _temp_1317		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1318 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1315  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1305:
!   j = j + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1303
! END FOR
_Label_1306:
! RETURN STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1319
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1320
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1321
	.word	-12
	.word	4
	.word	_Label_1322
	.word	-16
	.word	4
	.word	_Label_1323
	.word	-20
	.word	4
	.word	_Label_1324
	.word	-24
	.word	4
	.word	_Label_1325
	.word	-28
	.word	4
	.word	_Label_1326
	.word	-32
	.word	4
	.word	_Label_1327
	.word	-36
	.word	4
	.word	_Label_1328
	.word	-40
	.word	4
	.word	_Label_1329
	.word	-44
	.word	4
	.word	_Label_1330
	.word	-48
	.word	4
	.word	_Label_1331
	.word	-52
	.word	4
	.word	_Label_1332
	.word	-56
	.word	4
	.word	_Label_1333
	.word	-60
	.word	4
	.word	_Label_1334
	.word	-64
	.word	4
	.word	_Label_1335
	.word	-68
	.word	4
	.word	_Label_1336
	.word	-72
	.word	4
	.word	_Label_1337
	.word	-76
	.word	4
	.word	_Label_1338
	.word	-80
	.word	4
	.word	_Label_1339
	.word	-84
	.word	4
	.word	_Label_1340
	.word	-4248
	.word	4164
	.word	_Label_1341
	.word	-4252
	.word	4
	.word	_Label_1342
	.word	-4256
	.word	4
	.word	_Label_1343
	.word	-45900
	.word	41644
	.word	_Label_1344
	.word	-45904
	.word	4
	.word	_Label_1345
	.word	-45908
	.word	4
	.word	_Label_1346
	.word	-45912
	.word	4
	.word	0
_Label_1319:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1320:
	.ascii	"Pself\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1346:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	925,r13		! source line 925
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1347 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1352 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1353 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1352  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1348:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1353 then goto _Label_1351		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1351
_Label_1349:
	mov	934,r13		! source line 934
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1354 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1355 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1357 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1357 [i ] into _temp_1358
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1356 = _temp_1358		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1356  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_function_235_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1350:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1348
! END FOR
_Label_1351:
! CALL STATEMENT...
!   _temp_1359 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1359  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1360 = _function_234_PrintObjectAddr
	set	_function_234_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1361 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1360  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1362
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1363
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1364
	.word	-12
	.word	4
	.word	_Label_1365
	.word	-16
	.word	4
	.word	_Label_1366
	.word	-20
	.word	4
	.word	_Label_1367
	.word	-24
	.word	4
	.word	_Label_1368
	.word	-28
	.word	4
	.word	_Label_1369
	.word	-32
	.word	4
	.word	_Label_1370
	.word	-36
	.word	4
	.word	_Label_1371
	.word	-40
	.word	4
	.word	_Label_1372
	.word	-44
	.word	4
	.word	_Label_1373
	.word	-48
	.word	4
	.word	_Label_1374
	.word	-52
	.word	4
	.word	_Label_1375
	.word	-56
	.word	4
	.word	_Label_1376
	.word	-60
	.word	4
	.word	0
_Label_1362:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1363:
	.ascii	"Pself\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1375:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	12,r1
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	948,r13		! source line 948
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1377 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0IF",r10
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1380 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1378 else goto _Label_1379
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1379
	jmp	_Label_1378
_Label_1378:
! THEN...
	mov	959,r13		! source line 959
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0WH",r10
_Label_1381:
!   if threadInUse == 0 then goto _Label_1385		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1385
!   _temp_1384 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1386
_Label_1385:
!   _temp_1384 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1386:
!   if _temp_1384 then goto _Label_1383 else goto _Label_1382
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1382
	jmp	_Label_1383
_Label_1382:
	mov	959,r13		! source line 959
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1387 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0IF",r10
!   if threadInUse == 0 then goto _Label_1391		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1391
!   _temp_1390 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1392
_Label_1391:
!   _temp_1390 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1392:
!   if _temp_1390 then goto _Label_1389 else goto _Label_1388
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1388
	jmp	_Label_1389
_Label_1388:
! THEN...
	mov	964,r13		! source line 964
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_1393 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1394 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1393  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1389:
! END WHILE...
	jmp	_Label_1381
_Label_1383:
	jmp	_Label_1395
_Label_1379:
! ELSE...
	mov	968,r13		! source line 968
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_1396 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! END IF...
_Label_1395:
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (threadInUse) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = threadInUse + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1397 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_1398 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0RE",r10
!   ReturnResult: threadInUse  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1399
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1401
	.word	-16
	.word	4
	.word	_Label_1402
	.word	-20
	.word	4
	.word	_Label_1403
	.word	-24
	.word	4
	.word	_Label_1404
	.word	-28
	.word	4
	.word	_Label_1405
	.word	-32
	.word	4
	.word	_Label_1406
	.word	-9
	.word	1
	.word	_Label_1407
	.word	-36
	.word	4
	.word	_Label_1408
	.word	-10
	.word	1
	.word	_Label_1409
	.word	-40
	.word	4
	.word	_Label_1410
	.word	-44
	.word	4
	.word	_Label_1411
	.word	-48
	.word	4
	.word	0
_Label_1399:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1400:
	.ascii	"Pself\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1406:
	.byte	'C'
	.ascii	"_temp_1390\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1408:
	.byte	'C'
	.ascii	"_temp_1384\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1411:
	.byte	'P'
	.ascii	"threadInUse\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	982,r13		! source line 982
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1412 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1413 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1413 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1414 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_1415 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1416 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1415  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_1417 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1418
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1420
	.word	12
	.word	4
	.word	_Label_1421
	.word	-12
	.word	4
	.word	_Label_1422
	.word	-16
	.word	4
	.word	_Label_1423
	.word	-20
	.word	4
	.word	_Label_1424
	.word	-24
	.word	4
	.word	_Label_1425
	.word	-28
	.word	4
	.word	_Label_1426
	.word	-32
	.word	4
	.word	0
_Label_1418:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1419:
	.ascii	"Pself\0"
	.align
_Label_1420:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
! 
! ===============  CLASS TestHoareSemantic  ===============
! 
! Dispatch Table:
! 
_P_Kernel_TestHoareSemantic:
	.word	_Label_1427
	jmp	_Method_P_Kernel_TestHoareSemantic_1	! 4:	Init
	jmp	_Method_P_Kernel_TestHoareSemantic_2	! 8:	Print
	jmp	_Method_P_Kernel_TestHoareSemantic_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_TestHoareSemantic_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1427:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1428
	.word	_sourceFileName
	.word	259		! line number
	.word	41716		! size of instances, in bytes
	.word	_P_Kernel_TestHoareSemantic
	.word	_P_System_Object
	.word	0
_Label_1428:
	.ascii	"TestHoareSemantic\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_TestHoareSemantic_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_1,r1
	push	r1
	mov	11504,r1
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1465,r13		! source line 1465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   _temp_1429 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1431 = &_temp_1430
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1431 = _temp_1431 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1433 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3406:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3406
!   _temp_1433 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1435:
!   Data Move: *_temp_1431 = _temp_1433  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3407:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3407
!   _temp_1431 = _temp_1431 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1432 = _temp_1432 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1432) then goto _Label_1435
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1435
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1436 = &_temp_1430
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3408
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3408:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1429 = *_temp_1436  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3409:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3409
! ASSIGNMENT STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=36)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	mov	9,r3
_Label_3410:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3410
!   aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41696,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_HoareMutex
	set	_P_Kernel_HoareMutex,r1
	load	[r14+8],r11
	set	41696,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
!   _temp_1440 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0SE",r10
!   _temp_1441 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0SE",r10
!   _temp_1442 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-164]
!   _temp_1443 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1443 [0 ] into _temp_1444
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1442  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0SE",r10
!   _temp_1445 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-152]
!   _temp_1446 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1446 [1 ] into _temp_1447
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0SE",r10
!   _temp_1448 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-140]
!   _temp_1449 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1449 [2 ] into _temp_1450
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1448  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
!   _temp_1451 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-128]
!   _temp_1452 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1452 [3 ] into _temp_1453
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_1451  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0SE",r10
!   _temp_1454 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-116]
!   _temp_1455 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1455 [4 ] into _temp_1456
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_1454  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0SE",r10
!   _temp_1457 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-104]
!   _temp_1458 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1458 [5 ] into _temp_1459
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1457  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
!   _temp_1460 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-92]
!   _temp_1461 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1461 [6 ] into _temp_1462
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1460  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
!   _temp_1463 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-80]
!   _temp_1464 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1464 [7 ] into _temp_1465
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1463  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0SE",r10
!   _temp_1466 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-68]
!   _temp_1467 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1467 [8 ] into _temp_1468
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1466  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
!   _temp_1469 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-56]
!   _temp_1470 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1470 [9 ] into _temp_1471
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1469  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1476 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1477 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1476  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1472:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1477 then goto _Label_1475		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1475
_Label_1473:
	mov	1493,r13		! source line 1493
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   _temp_1478 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1478 [j ] into _temp_1479
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1480 = _temp_1479 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1480 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
!   _temp_1482 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1482 [j ] into _temp_1483
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1481 = _temp_1483		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1484 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1481  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1474:
!   j = j + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1472
! END FOR
_Label_1475:
! RETURN STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0RE",r10
	set	46020,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_1:
	.word	_sourceFileName
	.word	_Label_1485
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1487
	.word	-12
	.word	4
	.word	_Label_1488
	.word	-16
	.word	4
	.word	_Label_1489
	.word	-20
	.word	4
	.word	_Label_1490
	.word	-24
	.word	4
	.word	_Label_1491
	.word	-28
	.word	4
	.word	_Label_1492
	.word	-32
	.word	4
	.word	_Label_1493
	.word	-36
	.word	4
	.word	_Label_1494
	.word	-40
	.word	4
	.word	_Label_1495
	.word	-44
	.word	4
	.word	_Label_1496
	.word	-48
	.word	4
	.word	_Label_1497
	.word	-52
	.word	4
	.word	_Label_1498
	.word	-56
	.word	4
	.word	_Label_1499
	.word	-60
	.word	4
	.word	_Label_1500
	.word	-64
	.word	4
	.word	_Label_1501
	.word	-68
	.word	4
	.word	_Label_1502
	.word	-72
	.word	4
	.word	_Label_1503
	.word	-76
	.word	4
	.word	_Label_1504
	.word	-80
	.word	4
	.word	_Label_1505
	.word	-84
	.word	4
	.word	_Label_1506
	.word	-88
	.word	4
	.word	_Label_1507
	.word	-92
	.word	4
	.word	_Label_1508
	.word	-96
	.word	4
	.word	_Label_1509
	.word	-100
	.word	4
	.word	_Label_1510
	.word	-104
	.word	4
	.word	_Label_1511
	.word	-108
	.word	4
	.word	_Label_1512
	.word	-112
	.word	4
	.word	_Label_1513
	.word	-116
	.word	4
	.word	_Label_1514
	.word	-120
	.word	4
	.word	_Label_1515
	.word	-124
	.word	4
	.word	_Label_1516
	.word	-128
	.word	4
	.word	_Label_1517
	.word	-132
	.word	4
	.word	_Label_1518
	.word	-136
	.word	4
	.word	_Label_1519
	.word	-140
	.word	4
	.word	_Label_1520
	.word	-144
	.word	4
	.word	_Label_1521
	.word	-148
	.word	4
	.word	_Label_1522
	.word	-152
	.word	4
	.word	_Label_1523
	.word	-156
	.word	4
	.word	_Label_1524
	.word	-160
	.word	4
	.word	_Label_1525
	.word	-164
	.word	4
	.word	_Label_1526
	.word	-168
	.word	4
	.word	_Label_1527
	.word	-172
	.word	4
	.word	_Label_1528
	.word	-176
	.word	4
	.word	_Label_1529
	.word	-180
	.word	4
	.word	_Label_1530
	.word	-184
	.word	4
	.word	_Label_1531
	.word	-188
	.word	4
	.word	_Label_1532
	.word	-192
	.word	4
	.word	_Label_1533
	.word	-4356
	.word	4164
	.word	_Label_1534
	.word	-4360
	.word	4
	.word	_Label_1535
	.word	-4364
	.word	4
	.word	_Label_1536
	.word	-46008
	.word	41644
	.word	_Label_1537
	.word	-46012
	.word	4
	.word	_Label_1538
	.word	-46016
	.word	4
	.word	0
_Label_1485:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1486:
	.ascii	"Pself\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1538:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_TestHoareSemantic_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_2,r1
	push	r1
	mov	15,r1
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	1502,r13		! source line 1502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1509,r13		! source line 1509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1539 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1510,r13		! source line 1510
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1544 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1545 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1544  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1540:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1545 then goto _Label_1543		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1543
_Label_1541:
	mov	1511,r13		! source line 1511
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1546 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1512,r13		! source line 1512
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1513,r13		! source line 1513
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1547 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1547  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1514,r13		! source line 1514
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1549 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1549 [i ] into _temp_1550
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1548 = _temp_1550		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1548  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1515,r13		! source line 1515
	mov	"\0\0CA",r10
	call	_function_235_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1542:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1540
! END FOR
_Label_1543:
! CALL STATEMENT...
!   _temp_1551 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1517,r13		! source line 1517
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0SE",r10
!   _temp_1552 = _function_234_PrintObjectAddr
	set	_function_234_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1553 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1552  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1519,r13		! source line 1519
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1520,r13		! source line 1520
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_2:
	.word	_sourceFileName
	.word	_Label_1554
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	_Label_1562
	.word	-36
	.word	4
	.word	_Label_1563
	.word	-40
	.word	4
	.word	_Label_1564
	.word	-44
	.word	4
	.word	_Label_1565
	.word	-48
	.word	4
	.word	_Label_1566
	.word	-52
	.word	4
	.word	_Label_1567
	.word	-56
	.word	4
	.word	_Label_1568
	.word	-60
	.word	4
	.word	0
_Label_1554:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1555:
	.ascii	"Pself\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1568:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_TestHoareSemantic_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_3,r1
	push	r1
	mov	12,r1
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	1525,r13		! source line 1525
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_1569 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0IF",r10
	mov	1535,r13		! source line 1535
	mov	"\0\0SE",r10
!   _temp_1572 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1570 else goto _Label_1571
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1571
	jmp	_Label_1570
_Label_1570:
! THEN...
	mov	1536,r13		! source line 1536
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
!   _temp_1573 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   _temp_1574 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1573  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1571:
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
	mov	1538,r13		! source line 1538
	mov	"\0\0SE",r10
!   _temp_1575 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0IF",r10
!   if threadInUse == 0 then goto _Label_1579		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1579
!   _temp_1578 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1580
_Label_1579:
!   _temp_1578 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1580:
!   if _temp_1578 then goto _Label_1577 else goto _Label_1576
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1576
	jmp	_Label_1577
_Label_1576:
! THEN...
	mov	1540,r13		! source line 1540
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1581 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1540,r13		! source line 1540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1577:
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
!   if intIsZero (threadInUse) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1582 = threadInUse + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1582 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0SE",r10
!   _temp_1583 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0RE",r10
!   ReturnResult: threadInUse  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_3:
	.word	_sourceFileName
	.word	_Label_1584
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1586
	.word	-16
	.word	4
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-9
	.word	1
	.word	_Label_1590
	.word	-28
	.word	4
	.word	_Label_1591
	.word	-32
	.word	4
	.word	_Label_1592
	.word	-36
	.word	4
	.word	_Label_1593
	.word	-40
	.word	4
	.word	_Label_1594
	.word	-44
	.word	4
	.word	_Label_1595
	.word	-48
	.word	4
	.word	0
_Label_1584:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1585:
	.ascii	"Pself\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1589:
	.byte	'C'
	.ascii	"_temp_1578\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1595:
	.byte	'P'
	.ascii	"threadInUse\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_TestHoareSemantic_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_4,r1
	push	r1
	mov	8,r1
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	1554,r13		! source line 1554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0SE",r10
!   _temp_1596 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1597 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1597 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0SE",r10
!   _temp_1598 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0SE",r10
!   _temp_1599 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1600 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1599  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0SE",r10
!   _temp_1601 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_4:
	.word	_sourceFileName
	.word	_Label_1602
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	12
	.word	4
	.word	_Label_1605
	.word	-12
	.word	4
	.word	_Label_1606
	.word	-16
	.word	4
	.word	_Label_1607
	.word	-20
	.word	4
	.word	_Label_1608
	.word	-24
	.word	4
	.word	_Label_1609
	.word	-28
	.word	4
	.word	_Label_1610
	.word	-32
	.word	4
	.word	0
_Label_1602:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1611
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1611:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1612
	.word	_sourceFileName
	.word	281		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1612:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	1004,r13		! source line 1004
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3415:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3415
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_1614 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1615
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1617
	.word	-12
	.word	4
	.word	_Label_1618
	.word	-16
	.word	4
	.word	0
_Label_1615:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1616:
	.ascii	"Pself\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	1018,r13		! source line 1018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1619) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_1620 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1621 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1621  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CA",r10
	call	_function_235_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1622
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1624
	.word	-12
	.word	4
	.word	_Label_1625
	.word	-16
	.word	4
	.word	_Label_1626
	.word	-20
	.word	4
	.word	0
_Label_1622:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1623:
	.ascii	"Pself\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	1041,r13		! source line 1041
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1627 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1627  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1628  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1629 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1629  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1630 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1632		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1632
!	jmp	_Label_1631
_Label_1631:
! THEN...
	mov	1051,r13		! source line 1051
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1633 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1633  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1634
_Label_1632:
! ELSE...
	mov	1052,r13		! source line 1052
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1636		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1636
!	jmp	_Label_1635
_Label_1635:
! THEN...
	mov	1053,r13		! source line 1053
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1637 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1637  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1638
_Label_1636:
! ELSE...
	mov	1054,r13		! source line 1054
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1640		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1640
!	jmp	_Label_1639
_Label_1639:
! THEN...
	mov	1055,r13		! source line 1055
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1641 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1642
_Label_1640:
! ELSE...
	mov	1057,r13		! source line 1057
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1643 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1057,r13		! source line 1057
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1642:
! END IF...
_Label_1638:
! END IF...
_Label_1634:
! CALL STATEMENT...
!   _temp_1644 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1644  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1059,r13		! source line 1059
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1645 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1646
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	_Label_1654
	.word	-36
	.word	4
	.word	_Label_1655
	.word	-40
	.word	4
	.word	_Label_1656
	.word	-44
	.word	4
	.word	_Label_1657
	.word	-48
	.word	4
	.word	0
_Label_1646:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1658
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1658:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1659
	.word	_sourceFileName
	.word	301		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1659:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	367,r1
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	1080,r13		! source line 1080
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1468]
! CALL STATEMENT...
!   _temp_1660 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-1464]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-1464],r1
	store	r1,[r15+0]
!   Call the function
	mov	1086,r13		! source line 1086
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1662 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1664 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
!   _temp_1666 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1440]
!   NEW ARRAY Constructor...
!   _temp_1668 = &_temp_1667
	add	r14,-1436,r1
	store	r1,[r14+-192]
!   _temp_1668 = _temp_1668 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1670 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_3419:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3419
!   _temp_1670 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
	mov	10,r1
	store	r1,[r14+-188]
_Label_1672:
!   Data Move: *_temp_1668 = _temp_1670  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-192],r4
	mov	31,r3
_Label_3420:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3420
!   _temp_1668 = _temp_1668 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   _temp_1669 = _temp_1669 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_1669) then goto _Label_1672
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_1672
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1436]
!   _temp_1673 = &_temp_1667
	add	r14,-1436,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-1440],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3421
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3421:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1666 = *_temp_1673  (sizeInBytes=1244)
	load	[r14+-56],r5
	load	[r14+-1440],r4
	mov	311,r3
_Label_3422:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3422
! FOR STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1678 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1679 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1678  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1468]
_Label_1674:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1679 then goto _Label_1677		
	load	[r14+-1468],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1677
_Label_1675:
	mov	1094,r13		! source line 1094
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1680 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1680 [i ] into _temp_1681
!     make sure index expr is >= 0
	load	[r14+-1468],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   _temp_1682 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1682 [i ] into _temp_1683
!     make sure index expr is >= 0
	load	[r14+-1468],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1684 = _temp_1683 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1684 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_1686 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1686 [i ] into _temp_1687
!     make sure index expr is >= 0
	load	[r14+-1468],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1685 = _temp_1687		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1688 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1685  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1676:
!   i = i + 1
	load	[r14+-1468],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1468]
	jmp	_Label_1674
! END FOR
_Label_1677:
! RETURN STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0RE",r10
	add	r15,1472,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1689
	.word	4		! total size of parameters
	.word	1468		! frame size = 1468
	.word	_Label_1690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1691
	.word	-12
	.word	4
	.word	_Label_1692
	.word	-16
	.word	4
	.word	_Label_1693
	.word	-20
	.word	4
	.word	_Label_1694
	.word	-24
	.word	4
	.word	_Label_1695
	.word	-28
	.word	4
	.word	_Label_1696
	.word	-32
	.word	4
	.word	_Label_1697
	.word	-36
	.word	4
	.word	_Label_1698
	.word	-40
	.word	4
	.word	_Label_1699
	.word	-44
	.word	4
	.word	_Label_1700
	.word	-48
	.word	4
	.word	_Label_1701
	.word	-52
	.word	4
	.word	_Label_1702
	.word	-56
	.word	4
	.word	_Label_1703
	.word	-60
	.word	4
	.word	_Label_1704
	.word	-184
	.word	124
	.word	_Label_1705
	.word	-188
	.word	4
	.word	_Label_1706
	.word	-192
	.word	4
	.word	_Label_1707
	.word	-1436
	.word	1244
	.word	_Label_1708
	.word	-1440
	.word	4
	.word	_Label_1709
	.word	-1444
	.word	4
	.word	_Label_1710
	.word	-1448
	.word	4
	.word	_Label_1711
	.word	-1452
	.word	4
	.word	_Label_1712
	.word	-1456
	.word	4
	.word	_Label_1713
	.word	-1460
	.word	4
	.word	_Label_1714
	.word	-1464
	.word	4
	.word	_Label_1715
	.word	-1468
	.word	4
	.word	0
_Label_1689:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1690:
	.ascii	"Pself\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1715:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	1104,r13		! source line 1104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1716 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1721 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1722 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1721  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1717:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1722 then goto _Label_1720		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1720
_Label_1718:
	mov	1113,r13		! source line 1113
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1723 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1724 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1724  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_1725 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1725 [i ] into _temp_1726
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1719:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1717
! END FOR
_Label_1720:
! CALL STATEMENT...
!   _temp_1727 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_1728 = _function_234_PrintObjectAddr
	set	_function_234_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1729 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1728  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1730
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1732
	.word	-12
	.word	4
	.word	_Label_1733
	.word	-16
	.word	4
	.word	_Label_1734
	.word	-20
	.word	4
	.word	_Label_1735
	.word	-24
	.word	4
	.word	_Label_1736
	.word	-28
	.word	4
	.word	_Label_1737
	.word	-32
	.word	4
	.word	_Label_1738
	.word	-36
	.word	4
	.word	_Label_1739
	.word	-40
	.word	4
	.word	_Label_1740
	.word	-44
	.word	4
	.word	_Label_1741
	.word	-48
	.word	4
	.word	_Label_1742
	.word	-52
	.word	4
	.word	_Label_1743
	.word	-56
	.word	4
	.word	0
_Label_1730:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1731:
	.ascii	"Pself\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1742:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1743:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	1127,r13		! source line 1127
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1744 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1744  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1749 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1750 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1749  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1745:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1750 then goto _Label_1748		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1748
_Label_1746:
	mov	1136,r13		! source line 1136
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1751 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1751  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1138,r13		! source line 1138
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1752 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1752 [i ] into _temp_1753
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1747:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1745
! END FOR
_Label_1748:
! CALL STATEMENT...
!   _temp_1754 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_1755 = _function_234_PrintObjectAddr
	set	_function_234_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1756 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1755  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1144,r13		! source line 1144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1757
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1759
	.word	-12
	.word	4
	.word	_Label_1760
	.word	-16
	.word	4
	.word	_Label_1761
	.word	-20
	.word	4
	.word	_Label_1762
	.word	-24
	.word	4
	.word	_Label_1763
	.word	-28
	.word	4
	.word	_Label_1764
	.word	-32
	.word	4
	.word	_Label_1765
	.word	-36
	.word	4
	.word	_Label_1766
	.word	-40
	.word	4
	.word	_Label_1767
	.word	-44
	.word	4
	.word	_Label_1768
	.word	-48
	.word	4
	.word	_Label_1769
	.word	-52
	.word	4
	.word	0
_Label_1757:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1758:
	.ascii	"Pself\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1768:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	13,r1
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1770 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0IF",r10
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_1773 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1771 else goto _Label_1772
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1772
	jmp	_Label_1771
_Label_1771:
! THEN...
	mov	1161,r13		! source line 1161
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0WH",r10
_Label_1774:
!   if processInUse == 0 then goto _Label_1778		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1778
!   _temp_1777 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1779
_Label_1778:
!   _temp_1777 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1779:
!   if _temp_1777 then goto _Label_1776 else goto _Label_1775
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1775
	jmp	_Label_1776
_Label_1775:
	mov	1161,r13		! source line 1161
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_1780 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0IF",r10
!   if processInUse == 0 then goto _Label_1784		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1784
!   _temp_1783 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1785
_Label_1784:
!   _temp_1783 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1785:
!   if _temp_1783 then goto _Label_1782 else goto _Label_1781
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1781
	jmp	_Label_1782
_Label_1781:
! THEN...
	mov	1164,r13		! source line 1164
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1786 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1787 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1786  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1782:
! END WHILE...
	jmp	_Label_1774
_Label_1776:
	jmp	_Label_1788
_Label_1772:
! ELSE...
	mov	1168,r13		! source line 1168
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1789 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_1788:
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
!   if intIsZero (processInUse) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1790 = processInUse + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1790 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0AS",r10
!   if intIsZero (processInUse) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1791 = processInUse + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1791 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1792 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0RE",r10
!   ReturnResult: processInUse  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1793
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1794
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1795
	.word	-16
	.word	4
	.word	_Label_1796
	.word	-20
	.word	4
	.word	_Label_1797
	.word	-24
	.word	4
	.word	_Label_1798
	.word	-28
	.word	4
	.word	_Label_1799
	.word	-32
	.word	4
	.word	_Label_1800
	.word	-36
	.word	4
	.word	_Label_1801
	.word	-9
	.word	1
	.word	_Label_1802
	.word	-40
	.word	4
	.word	_Label_1803
	.word	-10
	.word	1
	.word	_Label_1804
	.word	-44
	.word	4
	.word	_Label_1805
	.word	-48
	.word	4
	.word	_Label_1806
	.word	-52
	.word	4
	.word	0
_Label_1793:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1794:
	.ascii	"Pself\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1801:
	.byte	'C'
	.ascii	"_temp_1783\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1803:
	.byte	'C'
	.ascii	"_temp_1777\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1806:
	.byte	'P'
	.ascii	"processInUse\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	9,r1
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	1185,r13		! source line 1185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_1807 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1808 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1808 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1809 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1809 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
!   _temp_1810 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_1811 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1812 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1811  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0SE",r10
!   _temp_1813 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1814
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1815
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1816
	.word	12
	.word	4
	.word	_Label_1817
	.word	-12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	_Label_1821
	.word	-28
	.word	4
	.word	_Label_1822
	.word	-32
	.word	4
	.word	_Label_1823
	.word	-36
	.word	4
	.word	0
_Label_1814:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1815:
	.ascii	"Pself\0"
	.align
_Label_1816:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1824
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1824:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1825
	.word	_sourceFileName
	.word	327		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1825:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1826 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1826  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0SE",r10
!   _temp_1828 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0AS",r10
!   numWaitingGroups = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_1830 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0SE",r10
!   _temp_1832 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: GroupsWaiting = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,56,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   GroupsWaiting = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
!   _temp_1834 = &GroupsWaiting
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1839 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1840 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1839  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1835:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1840 then goto _Label_1838		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1838
_Label_1836:
	mov	1331,r13		! source line 1331
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1843 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1843) then goto _Label_1842
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1842
!	jmp	_Label_1841
_Label_1841:
! THEN...
	mov	1335,r13		! source line 1335
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1844 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1335,r13		! source line 1335
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1842:
!   Increment the FOR-LOOP index variable and jump back
_Label_1837:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1835
! END FOR
_Label_1838:
! RETURN STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1845
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1847
	.word	-12
	.word	4
	.word	_Label_1848
	.word	-16
	.word	4
	.word	_Label_1849
	.word	-20
	.word	4
	.word	_Label_1850
	.word	-24
	.word	4
	.word	_Label_1851
	.word	-28
	.word	4
	.word	_Label_1852
	.word	-32
	.word	4
	.word	_Label_1853
	.word	-36
	.word	4
	.word	_Label_1854
	.word	-40
	.word	4
	.word	_Label_1855
	.word	-44
	.word	4
	.word	_Label_1856
	.word	-48
	.word	4
	.word	_Label_1857
	.word	-52
	.word	4
	.word	_Label_1858
	.word	-56
	.word	4
	.word	_Label_1859
	.word	-60
	.word	4
	.word	_Label_1860
	.word	-64
	.word	4
	.word	0
_Label_1845:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1846:
	.ascii	"Pself\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_1861 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1862 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1347,r13		! source line 1347
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1863 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1864 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0SE",r10
!   _temp_1865 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0SE",r10
!   _temp_1866 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1867
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1869
	.word	-12
	.word	4
	.word	_Label_1870
	.word	-16
	.word	4
	.word	_Label_1871
	.word	-20
	.word	4
	.word	_Label_1872
	.word	-24
	.word	4
	.word	_Label_1873
	.word	-28
	.word	4
	.word	_Label_1874
	.word	-32
	.word	4
	.word	0
_Label_1867:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1868:
	.ascii	"Pself\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0SE",r10
!   _temp_1875 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0WH",r10
_Label_1876:
!   if numberFreeFrames >= 1 then goto _Label_1878		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1878
!	jmp	_Label_1877
_Label_1877:
	mov	1367,r13		! source line 1367
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0SE",r10
!   _temp_1879 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1880 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1879  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1876
_Label_1878:
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
	mov	1372,r13		! source line 1372
	mov	"\0\0SE",r10
!   _temp_1881 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
!   _temp_1882 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_1883 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1883		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1884
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1886
	.word	-12
	.word	4
	.word	_Label_1887
	.word	-16
	.word	4
	.word	_Label_1888
	.word	-20
	.word	4
	.word	_Label_1889
	.word	-24
	.word	4
	.word	_Label_1890
	.word	-28
	.word	4
	.word	_Label_1891
	.word	-32
	.word	4
	.word	_Label_1892
	.word	-36
	.word	4
	.word	_Label_1893
	.word	-40
	.word	4
	.word	0
_Label_1884:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1885:
	.ascii	"Pself\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1893:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	22,r1
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0SE",r10
!   _temp_1894 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! IF STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0IF",r10
!   if numWaitingGroups <= 1 then goto _Label_1896		(int)
	load	[r14+8],r1
	load	[r1+72],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1896
!	jmp	_Label_1895
_Label_1895:
! THEN...
	mov	1398,r13		! source line 1398
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0SE",r10
!   _temp_1897 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   _temp_1898 = &GroupsWaiting
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_1897  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1896:
! WHILE STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0WH",r10
_Label_1899:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1901		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1901
!	jmp	_Label_1900
_Label_1900:
	mov	1400,r13		! source line 1400
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0SE",r10
!   _temp_1902 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   _temp_1903 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1902  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1899
_Label_1901:
! FOR STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1908 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1909 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1908  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-76]
_Label_1904:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1909 then goto _Label_1907		
	load	[r14+-76],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1907
_Label_1905:
	mov	1403,r13		! source line 1403
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
	mov	1404,r13		! source line 1404
	mov	"\0\0SE",r10
!   _temp_1910 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message FindZeroAndSet
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   _temp_1911 = f * 8192		(int)
	load	[r14+-84],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   frameAddr = 1048576 + _temp_1911		(int)
	set	1048576,r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1906:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_1904
! END FOR
_Label_1907:
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
!   numWaitingGroups = numWaitingGroups - 1		(int)
	load	[r14+8],r1
	load	[r1+72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+72]
! SEND STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0SE",r10
!   _temp_1912 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1913 = &GroupsWaiting
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1912  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1914 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1917 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1916 = *_temp_1917  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1915 = _temp_1916 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1914 = _temp_1915  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0SE",r10
!   _temp_1918 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1919
	.word	12		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_1920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1921
	.word	12
	.word	4
	.word	_Label_1922
	.word	16
	.word	4
	.word	_Label_1923
	.word	-12
	.word	4
	.word	_Label_1924
	.word	-16
	.word	4
	.word	_Label_1925
	.word	-20
	.word	4
	.word	_Label_1926
	.word	-24
	.word	4
	.word	_Label_1927
	.word	-28
	.word	4
	.word	_Label_1928
	.word	-32
	.word	4
	.word	_Label_1929
	.word	-36
	.word	4
	.word	_Label_1930
	.word	-40
	.word	4
	.word	_Label_1931
	.word	-44
	.word	4
	.word	_Label_1932
	.word	-48
	.word	4
	.word	_Label_1933
	.word	-52
	.word	4
	.word	_Label_1934
	.word	-56
	.word	4
	.word	_Label_1935
	.word	-60
	.word	4
	.word	_Label_1936
	.word	-64
	.word	4
	.word	_Label_1937
	.word	-68
	.word	4
	.word	_Label_1938
	.word	-72
	.word	4
	.word	_Label_1939
	.word	-76
	.word	4
	.word	_Label_1940
	.word	-80
	.word	4
	.word	_Label_1941
	.word	-84
	.word	4
	.word	0
_Label_1919:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1920:
	.ascii	"Pself\0"
	.align
_Label_1921:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1922:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1939:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1940:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	16,r1
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	1426,r13		! source line 1426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
!   _temp_1942 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1943 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesToReturn = *_temp_1943  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1948 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1949 = numFramesToReturn - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1948  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-52]
_Label_1944:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1949 then goto _Label_1947		
	load	[r14+-52],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1947
_Label_1945:
	mov	1437,r13		! source line 1437
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   _temp_1950 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_1950 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0SE",r10
!   _temp_1951 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=frameNumber  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1946:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1944
! END FOR
_Label_1947:
! SEND STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0SE",r10
!   _temp_1952 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1953 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1952  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1954 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1954 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0SE",r10
!   _temp_1955 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1956
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1958
	.word	12
	.word	4
	.word	_Label_1959
	.word	-12
	.word	4
	.word	_Label_1960
	.word	-16
	.word	4
	.word	_Label_1961
	.word	-20
	.word	4
	.word	_Label_1962
	.word	-24
	.word	4
	.word	_Label_1963
	.word	-28
	.word	4
	.word	_Label_1964
	.word	-32
	.word	4
	.word	_Label_1965
	.word	-36
	.word	4
	.word	_Label_1966
	.word	-40
	.word	4
	.word	_Label_1967
	.word	-44
	.word	4
	.word	_Label_1968
	.word	-48
	.word	4
	.word	_Label_1969
	.word	-52
	.word	4
	.word	_Label_1970
	.word	-56
	.word	4
	.word	_Label_1971
	.word	-60
	.word	4
	.word	_Label_1972
	.word	-64
	.word	4
	.word	0
_Label_1956:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1957:
	.ascii	"Pself\0"
	.align
_Label_1958:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1969:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1970:
	.byte	'I'
	.ascii	"numFramesToReturn\0"
	.align
_Label_1971:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1973
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1973:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1974
	.word	_sourceFileName
	.word	348		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1974:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	1578,r13		! source line 1578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   _temp_1975 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1977 = &_temp_1976
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1977 = _temp_1977 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1979:
!   Data Move: *_temp_1977 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1977 = _temp_1977 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1978 = _temp_1978 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1978) then goto _Label_1979
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1979
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1980 = &_temp_1976
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3433
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3433:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1975 = *_temp_1980  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3434:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3434
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1981
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1983
	.word	-12
	.word	4
	.word	_Label_1984
	.word	-16
	.word	4
	.word	_Label_1985
	.word	-20
	.word	4
	.word	_Label_1986
	.word	-104
	.word	84
	.word	_Label_1987
	.word	-108
	.word	4
	.word	0
_Label_1981:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1982:
	.ascii	"Pself\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	1588,r13		! source line 1588
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1988 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1988  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1593,r13		! source line 1593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1989 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1594,r13		! source line 1594
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1994 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1995 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1994  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1990:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1995 then goto _Label_1993		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1993
_Label_1991:
	mov	1595,r13		! source line 1595
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1996 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1596,r13		! source line 1596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1998 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1998 [i ] into _temp_1999
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1997 = _temp_1999		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1997  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1597,r13		! source line 1597
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2000 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2000  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2002 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2002 [i ] into _temp_2003
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2001 = *_temp_2003  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2001  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1599,r13		! source line 1599
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2004 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2005 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1601,r13		! source line 1601
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2006 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1602,r13		! source line 1602
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2008) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2007  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2009 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1604,r13		! source line 1604
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
	mov	1605,r13		! source line 1605
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2013) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2012  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2012) then goto _Label_2011
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2011
!	jmp	_Label_2010
_Label_2010:
! THEN...
	mov	1606,r13		! source line 1606
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2015) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2014  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2016
_Label_2011:
! ELSE...
	mov	1608,r13		! source line 1608
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2017 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1608,r13		! source line 1608
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2016:
! CALL STATEMENT...
!   _temp_2018 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2018  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
	mov	1611,r13		! source line 1611
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2021) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2019 else goto _Label_2020
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2020
	jmp	_Label_2019
_Label_2019:
! THEN...
	mov	1612,r13		! source line 1612
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2022 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2022  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2023
_Label_2020:
! ELSE...
	mov	1614,r13		! source line 1614
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2024 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1614,r13		! source line 1614
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2023:
! CALL STATEMENT...
!   _temp_2025 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2025  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2028) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2026 else goto _Label_2027
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2027
	jmp	_Label_2026
_Label_2026:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2029 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2029  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2030
_Label_2027:
! ELSE...
	mov	1620,r13		! source line 1620
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2031 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1620,r13		! source line 1620
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2030:
! CALL STATEMENT...
!   _temp_2032 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0IF",r10
	mov	1623,r13		! source line 1623
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2035) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2033 else goto _Label_2034
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2034
	jmp	_Label_2033
_Label_2033:
! THEN...
	mov	1624,r13		! source line 1624
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2036 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2036  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1624,r13		! source line 1624
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2037
_Label_2034:
! ELSE...
	mov	1626,r13		! source line 1626
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2038 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1626,r13		! source line 1626
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2037:
! CALL STATEMENT...
!   _temp_2039 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0IF",r10
	mov	1629,r13		! source line 1629
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2042) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2040 else goto _Label_2041
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2041
	jmp	_Label_2040
_Label_2040:
! THEN...
	mov	1630,r13		! source line 1630
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2043 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2043  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2044
_Label_2041:
! ELSE...
	mov	1632,r13		! source line 1632
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2045 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2044:
! CALL STATEMENT...
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1992:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1990
! END FOR
_Label_1993:
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2046
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2048
	.word	-12
	.word	4
	.word	_Label_2049
	.word	-16
	.word	4
	.word	_Label_2050
	.word	-20
	.word	4
	.word	_Label_2051
	.word	-24
	.word	4
	.word	_Label_2052
	.word	-28
	.word	4
	.word	_Label_2053
	.word	-32
	.word	4
	.word	_Label_2054
	.word	-36
	.word	4
	.word	_Label_2055
	.word	-40
	.word	4
	.word	_Label_2056
	.word	-44
	.word	4
	.word	_Label_2057
	.word	-48
	.word	4
	.word	_Label_2058
	.word	-52
	.word	4
	.word	_Label_2059
	.word	-56
	.word	4
	.word	_Label_2060
	.word	-60
	.word	4
	.word	_Label_2061
	.word	-64
	.word	4
	.word	_Label_2062
	.word	-68
	.word	4
	.word	_Label_2063
	.word	-72
	.word	4
	.word	_Label_2064
	.word	-76
	.word	4
	.word	_Label_2065
	.word	-80
	.word	4
	.word	_Label_2066
	.word	-84
	.word	4
	.word	_Label_2067
	.word	-88
	.word	4
	.word	_Label_2068
	.word	-92
	.word	4
	.word	_Label_2069
	.word	-96
	.word	4
	.word	_Label_2070
	.word	-100
	.word	4
	.word	_Label_2071
	.word	-104
	.word	4
	.word	_Label_2072
	.word	-108
	.word	4
	.word	_Label_2073
	.word	-112
	.word	4
	.word	_Label_2074
	.word	-116
	.word	4
	.word	_Label_2075
	.word	-120
	.word	4
	.word	_Label_2076
	.word	-124
	.word	4
	.word	_Label_2077
	.word	-128
	.word	4
	.word	_Label_2078
	.word	-132
	.word	4
	.word	_Label_2079
	.word	-136
	.word	4
	.word	_Label_2080
	.word	-140
	.word	4
	.word	_Label_2081
	.word	-144
	.word	4
	.word	_Label_2082
	.word	-148
	.word	4
	.word	_Label_2083
	.word	-152
	.word	4
	.word	_Label_2084
	.word	-156
	.word	4
	.word	_Label_2085
	.word	-160
	.word	4
	.word	_Label_2086
	.word	-164
	.word	4
	.word	_Label_2087
	.word	-168
	.word	4
	.word	0
_Label_2046:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2047:
	.ascii	"Pself\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2087:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0RE",r10
!   _temp_2090 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2090 [entry ] into _temp_2091
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2089 = *_temp_2091  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2088 = _temp_2089 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2088  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2092
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2093
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2094
	.word	12
	.word	4
	.word	_Label_2095
	.word	-12
	.word	4
	.word	_Label_2096
	.word	-16
	.word	4
	.word	_Label_2097
	.word	-20
	.word	4
	.word	_Label_2098
	.word	-24
	.word	4
	.word	0
_Label_2092:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2093:
	.ascii	"Pself\0"
	.align
_Label_2094:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	1650,r13		! source line 1650
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0RE",r10
!   _temp_2101 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2101 [entry ] into _temp_2102
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2100 = *_temp_2102  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2099 = _temp_2100 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2099  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2103
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2104
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2105
	.word	12
	.word	4
	.word	_Label_2106
	.word	-12
	.word	4
	.word	_Label_2107
	.word	-16
	.word	4
	.word	_Label_2108
	.word	-20
	.word	4
	.word	_Label_2109
	.word	-24
	.word	4
	.word	0
_Label_2103:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2104:
	.ascii	"Pself\0"
	.align
_Label_2105:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	1659,r13		! source line 1659
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   _temp_2110 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2110 [entry ] into _temp_2111
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2115 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2115 [entry ] into _temp_2116
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2114 = *_temp_2116  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2113 = _temp_2114 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2112 = _temp_2113 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2111 = _temp_2112  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2117
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2118
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2119
	.word	12
	.word	4
	.word	_Label_2120
	.word	16
	.word	4
	.word	_Label_2121
	.word	-12
	.word	4
	.word	_Label_2122
	.word	-16
	.word	4
	.word	_Label_2123
	.word	-20
	.word	4
	.word	_Label_2124
	.word	-24
	.word	4
	.word	_Label_2125
	.word	-28
	.word	4
	.word	_Label_2126
	.word	-32
	.word	4
	.word	_Label_2127
	.word	-36
	.word	4
	.word	0
_Label_2117:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2118:
	.ascii	"Pself\0"
	.align
_Label_2119:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	1669,r13		! source line 1669
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0RE",r10
!   _temp_2131 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2131 [entry ] into _temp_2132
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2130 = *_temp_2132  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2129 = _temp_2130 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2129) then goto _Label_2133
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2133
!   _temp_2128 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2134
_Label_2133:
!   _temp_2128 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2134:
!   ReturnResult: _temp_2128  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2135
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2137
	.word	12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	_Label_2141
	.word	-28
	.word	4
	.word	_Label_2142
	.word	-9
	.word	1
	.word	0
_Label_2135:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2136:
	.ascii	"Pself\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2142:
	.byte	'C'
	.ascii	"_temp_2128\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	1678,r13		! source line 1678
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
!   _temp_2146 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2146 [entry ] into _temp_2147
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2145 = *_temp_2147  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2144 = _temp_2145 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2144) then goto _Label_2148
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2148
!   _temp_2143 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2149
_Label_2148:
!   _temp_2143 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2149:
!   ReturnResult: _temp_2143  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2150
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	-16
	.word	4
	.word	_Label_2154
	.word	-20
	.word	4
	.word	_Label_2155
	.word	-24
	.word	4
	.word	_Label_2156
	.word	-28
	.word	4
	.word	_Label_2157
	.word	-9
	.word	1
	.word	0
_Label_2150:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2157:
	.byte	'C'
	.ascii	"_temp_2143\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	1687,r13		! source line 1687
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   _temp_2161 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2161 [entry ] into _temp_2162
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2160 = *_temp_2162  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2159 = _temp_2160 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2159) then goto _Label_2163
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2163
!   _temp_2158 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2164
_Label_2163:
!   _temp_2158 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2164:
!   ReturnResult: _temp_2158  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2165
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2167
	.word	12
	.word	4
	.word	_Label_2168
	.word	-16
	.word	4
	.word	_Label_2169
	.word	-20
	.word	4
	.word	_Label_2170
	.word	-24
	.word	4
	.word	_Label_2171
	.word	-28
	.word	4
	.word	_Label_2172
	.word	-9
	.word	1
	.word	0
_Label_2165:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2166:
	.ascii	"Pself\0"
	.align
_Label_2167:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2172:
	.byte	'C'
	.ascii	"_temp_2158\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	1696,r13		! source line 1696
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
!   _temp_2176 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2176 [entry ] into _temp_2177
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2175 = *_temp_2177  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2174 = _temp_2175 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2174) then goto _Label_2178
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2178
!   _temp_2173 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2179
_Label_2178:
!   _temp_2173 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2179:
!   ReturnResult: _temp_2173  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2180
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2182
	.word	12
	.word	4
	.word	_Label_2183
	.word	-16
	.word	4
	.word	_Label_2184
	.word	-20
	.word	4
	.word	_Label_2185
	.word	-24
	.word	4
	.word	_Label_2186
	.word	-28
	.word	4
	.word	_Label_2187
	.word	-9
	.word	1
	.word	0
_Label_2180:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2181:
	.ascii	"Pself\0"
	.align
_Label_2182:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2187:
	.byte	'C'
	.ascii	"_temp_2173\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1705,r13		! source line 1705
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0AS",r10
!   _temp_2188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2188 [entry ] into _temp_2189
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2192 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2192 [entry ] into _temp_2193
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2191 = *_temp_2193  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2190 = _temp_2191 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2189 = _temp_2190  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2194
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2196
	.word	12
	.word	4
	.word	_Label_2197
	.word	-12
	.word	4
	.word	_Label_2198
	.word	-16
	.word	4
	.word	_Label_2199
	.word	-20
	.word	4
	.word	_Label_2200
	.word	-24
	.word	4
	.word	_Label_2201
	.word	-28
	.word	4
	.word	_Label_2202
	.word	-32
	.word	4
	.word	0
_Label_2194:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2195:
	.ascii	"Pself\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1714,r13		! source line 1714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0AS",r10
!   _temp_2203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2203 [entry ] into _temp_2204
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2207 [entry ] into _temp_2208
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2206 = *_temp_2208  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2205 = _temp_2206 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2204 = _temp_2205  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2209
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2211
	.word	12
	.word	4
	.word	_Label_2212
	.word	-12
	.word	4
	.word	_Label_2213
	.word	-16
	.word	4
	.word	_Label_2214
	.word	-20
	.word	4
	.word	_Label_2215
	.word	-24
	.word	4
	.word	_Label_2216
	.word	-28
	.word	4
	.word	_Label_2217
	.word	-32
	.word	4
	.word	0
_Label_2209:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2210:
	.ascii	"Pself\0"
	.align
_Label_2211:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1723,r13		! source line 1723
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0AS",r10
!   _temp_2218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2218 [entry ] into _temp_2219
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2222 [entry ] into _temp_2223
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2221 = *_temp_2223  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2220 = _temp_2221 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2219 = _temp_2220  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2224
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2226
	.word	12
	.word	4
	.word	_Label_2227
	.word	-12
	.word	4
	.word	_Label_2228
	.word	-16
	.word	4
	.word	_Label_2229
	.word	-20
	.word	4
	.word	_Label_2230
	.word	-24
	.word	4
	.word	_Label_2231
	.word	-28
	.word	4
	.word	_Label_2232
	.word	-32
	.word	4
	.word	0
_Label_2224:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2225:
	.ascii	"Pself\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	1732,r13		! source line 1732
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0AS",r10
!   _temp_2233 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2233 [entry ] into _temp_2234
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2237 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2237 [entry ] into _temp_2238
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2236 = *_temp_2238  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2235 = _temp_2236 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2234 = _temp_2235  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2239
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2241
	.word	12
	.word	4
	.word	_Label_2242
	.word	-12
	.word	4
	.word	_Label_2243
	.word	-16
	.word	4
	.word	_Label_2244
	.word	-20
	.word	4
	.word	_Label_2245
	.word	-24
	.word	4
	.word	_Label_2246
	.word	-28
	.word	4
	.word	_Label_2247
	.word	-32
	.word	4
	.word	0
_Label_2239:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2240:
	.ascii	"Pself\0"
	.align
_Label_2241:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	1741,r13		! source line 1741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0AS",r10
!   _temp_2248 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2248 [entry ] into _temp_2249
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2252 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2252 [entry ] into _temp_2253
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2251 = *_temp_2253  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2250 = _temp_2251 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2249 = _temp_2250  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2254
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2255
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2256
	.word	12
	.word	4
	.word	_Label_2257
	.word	-12
	.word	4
	.word	_Label_2258
	.word	-16
	.word	4
	.word	_Label_2259
	.word	-20
	.word	4
	.word	_Label_2260
	.word	-24
	.word	4
	.word	_Label_2261
	.word	-28
	.word	4
	.word	_Label_2262
	.word	-32
	.word	4
	.word	0
_Label_2254:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2255:
	.ascii	"Pself\0"
	.align
_Label_2256:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1750,r13		! source line 1750
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0AS",r10
!   _temp_2263 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2263 [entry ] into _temp_2264
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2267 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2267 [entry ] into _temp_2268
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2266 = *_temp_2268  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2265 = _temp_2266 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2264 = _temp_2265  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2269
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2271
	.word	12
	.word	4
	.word	_Label_2272
	.word	-12
	.word	4
	.word	_Label_2273
	.word	-16
	.word	4
	.word	_Label_2274
	.word	-20
	.word	4
	.word	_Label_2275
	.word	-24
	.word	4
	.word	_Label_2276
	.word	-28
	.word	4
	.word	_Label_2277
	.word	-32
	.word	4
	.word	0
_Label_2269:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2270:
	.ascii	"Pself\0"
	.align
_Label_2271:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1759,r13		! source line 1759
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   _temp_2278 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2278 [entry ] into _temp_2279
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2282 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2282 [entry ] into _temp_2283
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2281 = *_temp_2283  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2280 = _temp_2281 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2279 = _temp_2280  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2284
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2286
	.word	12
	.word	4
	.word	_Label_2287
	.word	-12
	.word	4
	.word	_Label_2288
	.word	-16
	.word	4
	.word	_Label_2289
	.word	-20
	.word	4
	.word	_Label_2290
	.word	-24
	.word	4
	.word	_Label_2291
	.word	-28
	.word	4
	.word	_Label_2292
	.word	-32
	.word	4
	.word	0
_Label_2284:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2285:
	.ascii	"Pself\0"
	.align
_Label_2286:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	1768,r13		! source line 1768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
!   _temp_2293 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2293 [entry ] into _temp_2294
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2297 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2297 [entry ] into _temp_2298
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2296 = *_temp_2298  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2295 = _temp_2296 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2294 = _temp_2295  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2299
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2301
	.word	12
	.word	4
	.word	_Label_2302
	.word	-12
	.word	4
	.word	_Label_2303
	.word	-16
	.word	4
	.word	_Label_2304
	.word	-20
	.word	4
	.word	_Label_2305
	.word	-24
	.word	4
	.word	_Label_2306
	.word	-28
	.word	4
	.word	_Label_2307
	.word	-32
	.word	4
	.word	0
_Label_2299:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2300:
	.ascii	"Pself\0"
	.align
_Label_2301:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	1777,r13		! source line 1777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2309 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2309 [0 ] into _temp_2310
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2308 = _temp_2310		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2311 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2308  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2311  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2312
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2314
	.word	-12
	.word	4
	.word	_Label_2315
	.word	-16
	.word	4
	.word	_Label_2316
	.word	-20
	.word	4
	.word	_Label_2317
	.word	-24
	.word	4
	.word	0
_Label_2312:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2313:
	.ascii	"Pself\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	1788,r13		! source line 1788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2318
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2318
	jmp	_Label_2319
_Label_2318:
! THEN...
	mov	1804,r13		! source line 1804
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2320
_Label_2319:
! ELSE...
	mov	1805,r13		! source line 1805
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2322		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2322
!	jmp	_Label_2321
_Label_2321:
! THEN...
	mov	1806,r13		! source line 1806
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2322:
! END IF...
_Label_2320:
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0WH",r10
_Label_2323:
!	jmp	_Label_2324
_Label_2324:
	mov	1812,r13		! source line 1812
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2327		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2327
!	jmp	_Label_2326
_Label_2326:
! THEN...
	mov	1814,r13		! source line 1814
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2328 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2327:
! IF STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0IF",r10
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2332) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2331  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2331 then goto _Label_2330 else goto _Label_2329
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2329
	jmp	_Label_2330
_Label_2329:
! THEN...
	mov	1818,r13		! source line 1818
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2333 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2330:
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2335) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2334  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2334 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0WH",r10
_Label_2336:
!   if offset >= 8192 then goto _Label_2338		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2338
!	jmp	_Label_2337
_Label_2337:
	mov	1823,r13		! source line 1823
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2339 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2339  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2341		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2341
!	jmp	_Label_2340
_Label_2340:
! THEN...
	mov	1832,r13		! source line 1832
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2341:
! END WHILE...
	jmp	_Label_2336
_Label_2338:
! ASSIGNMENT STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2323
_Label_2325:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2342
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2343
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2344
	.word	12
	.word	4
	.word	_Label_2345
	.word	16
	.word	4
	.word	_Label_2346
	.word	20
	.word	4
	.word	_Label_2347
	.word	-9
	.word	1
	.word	_Label_2348
	.word	-16
	.word	4
	.word	_Label_2349
	.word	-20
	.word	4
	.word	_Label_2350
	.word	-24
	.word	4
	.word	_Label_2351
	.word	-28
	.word	4
	.word	_Label_2352
	.word	-10
	.word	1
	.word	_Label_2353
	.word	-32
	.word	4
	.word	_Label_2354
	.word	-36
	.word	4
	.word	_Label_2355
	.word	-40
	.word	4
	.word	_Label_2356
	.word	-44
	.word	4
	.word	_Label_2357
	.word	-48
	.word	4
	.word	0
_Label_2342:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2343:
	.ascii	"Pself\0"
	.align
_Label_2344:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2345:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2346:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2347:
	.byte	'C'
	.ascii	"_temp_2339\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2352:
	.byte	'C'
	.ascii	"_temp_2331\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2354:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2355:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2356:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2357:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	1842,r13		! source line 1842
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2358
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2358
	jmp	_Label_2359
_Label_2358:
! THEN...
	mov	1854,r13		! source line 1854
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2360
_Label_2359:
! ELSE...
	mov	1855,r13		! source line 1855
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2362		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2362
!	jmp	_Label_2361
_Label_2361:
! THEN...
	mov	1856,r13		! source line 1856
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2362:
! END IF...
_Label_2360:
! ASSIGNMENT STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0WH",r10
_Label_2363:
!	jmp	_Label_2364
_Label_2364:
	mov	1860,r13		! source line 1860
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2369		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2369
	jmp	_Label_2366
_Label_2369:
	mov	1862,r13		! source line 1862
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2371) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2370  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2370 then goto _Label_2368 else goto _Label_2366
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2366
	jmp	_Label_2368
_Label_2368:
	mov	1863,r13		! source line 1863
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2373) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2372  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2372 then goto _Label_2367 else goto _Label_2366
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2366
	jmp	_Label_2367
_Label_2366:
! THEN...
	mov	1864,r13		! source line 1864
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2367:
! ASSIGNMENT STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0AS",r10
	mov	1866,r13		! source line 1866
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2375) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2374  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2374 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0WH",r10
_Label_2376:
!   if offset >= 8192 then goto _Label_2378		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2378
!	jmp	_Label_2377
_Label_2377:
	mov	1867,r13		! source line 1867
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2379 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2379  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2381		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2381
!	jmp	_Label_2380
_Label_2380:
! THEN...
	mov	1874,r13		! source line 1874
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2381:
! END WHILE...
	jmp	_Label_2376
_Label_2378:
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2363
_Label_2365:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2382
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2383
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2384
	.word	12
	.word	4
	.word	_Label_2385
	.word	16
	.word	4
	.word	_Label_2386
	.word	20
	.word	4
	.word	_Label_2387
	.word	-9
	.word	1
	.word	_Label_2388
	.word	-16
	.word	4
	.word	_Label_2389
	.word	-20
	.word	4
	.word	_Label_2390
	.word	-24
	.word	4
	.word	_Label_2391
	.word	-10
	.word	1
	.word	_Label_2392
	.word	-28
	.word	4
	.word	_Label_2393
	.word	-11
	.word	1
	.word	_Label_2394
	.word	-32
	.word	4
	.word	_Label_2395
	.word	-36
	.word	4
	.word	_Label_2396
	.word	-40
	.word	4
	.word	_Label_2397
	.word	-44
	.word	4
	.word	0
_Label_2382:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2383:
	.ascii	"Pself\0"
	.align
_Label_2384:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2385:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2386:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2387:
	.byte	'C'
	.ascii	"_temp_2379\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2391:
	.byte	'C'
	.ascii	"_temp_2372\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2393:
	.byte	'C'
	.ascii	"_temp_2370\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2395:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2396:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2397:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1884,r13		! source line 1884
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0IF",r10
	mov	1908,r13		! source line 1908
	mov	"\0\0SE",r10
!   _temp_2401 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2402) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2401  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2400  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2400 >= 4 then goto _Label_2399		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2399
!	jmp	_Label_2398
_Label_2398:
! THEN...
	mov	1911,r13		! source line 1911
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2399:
! IF STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2404		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2404
!	jmp	_Label_2403
_Label_2403:
! THEN...
	mov	1916,r13		! source line 1916
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2404:
! ASSIGNMENT STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
	mov	1921,r13		! source line 1921
	mov	"\0\0SE",r10
!   _temp_2407 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2406 = _temp_2407 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2408 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2409) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2406  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2408  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2405  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2405  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2410
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2411
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2412
	.word	12
	.word	4
	.word	_Label_2413
	.word	16
	.word	4
	.word	_Label_2414
	.word	20
	.word	4
	.word	_Label_2415
	.word	-12
	.word	4
	.word	_Label_2416
	.word	-16
	.word	4
	.word	_Label_2417
	.word	-20
	.word	4
	.word	_Label_2418
	.word	-24
	.word	4
	.word	_Label_2419
	.word	-28
	.word	4
	.word	_Label_2420
	.word	-32
	.word	4
	.word	_Label_2421
	.word	-36
	.word	4
	.word	_Label_2422
	.word	-40
	.word	4
	.word	_Label_2423
	.word	-44
	.word	4
	.word	0
_Label_2410:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2411:
	.ascii	"Pself\0"
	.align
_Label_2412:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2414:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2424
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2424:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2425
	.word	_sourceFileName
	.word	381		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2425:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	2423,r13		! source line 2423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2426 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2426  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2424,r13		! source line 2424
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_2428 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_2430 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2431
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2433
	.word	-12
	.word	4
	.word	_Label_2434
	.word	-16
	.word	4
	.word	_Label_2435
	.word	-20
	.word	4
	.word	_Label_2436
	.word	-24
	.word	4
	.word	_Label_2437
	.word	-28
	.word	4
	.word	0
_Label_2431:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2432:
	.ascii	"Pself\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	2439,r13		! source line 2439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_2438 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0WH",r10
_Label_2439:
!	jmp	_Label_2440
_Label_2440:
	mov	2453,r13		! source line 2453
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_2442 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2443) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2442  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2444 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2460,r13		! source line 2460
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2453 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2447
	cmp	r1,2
	be	_Label_2448
	cmp	r1,3
	be	_Label_2449
	cmp	r1,4
	be	_Label_2450
	cmp	r1,5
	be	_Label_2451
	cmp	r1,6
	be	_Label_2452
	jmp	_Label_2445
! CASE 1...
_Label_2447:
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2454 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2448:
! CALL STATEMENT...
!   _temp_2455 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2455  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2465,r13		! source line 2465
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2449:
! CALL STATEMENT...
!   _temp_2456 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2456  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2467,r13		! source line 2467
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2450:
! CALL STATEMENT...
!   _temp_2457 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2457  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2469,r13		! source line 2469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2451:
! BREAK STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0BR",r10
	jmp	_Label_2446
! CASE 6...
_Label_2452:
! CALL STATEMENT...
!   _temp_2458 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2458  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2475,r13		! source line 2475
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2445:
! CALL STATEMENT...
!   _temp_2459 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2477,r13		! source line 2477
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2446:
! END WHILE...
	jmp	_Label_2439
_Label_2441:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2460
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2462
	.word	12
	.word	4
	.word	_Label_2463
	.word	16
	.word	4
	.word	_Label_2464
	.word	20
	.word	4
	.word	_Label_2465
	.word	-12
	.word	4
	.word	_Label_2466
	.word	-16
	.word	4
	.word	_Label_2467
	.word	-20
	.word	4
	.word	_Label_2468
	.word	-24
	.word	4
	.word	_Label_2469
	.word	-28
	.word	4
	.word	_Label_2470
	.word	-32
	.word	4
	.word	_Label_2471
	.word	-36
	.word	4
	.word	_Label_2472
	.word	-40
	.word	4
	.word	_Label_2473
	.word	-44
	.word	4
	.word	_Label_2474
	.word	-48
	.word	4
	.word	_Label_2475
	.word	-52
	.word	4
	.word	0
_Label_2460:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2461:
	.ascii	"Pself\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2463:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2464:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2486,r13		! source line 2486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2476
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2478
	.word	12
	.word	4
	.word	_Label_2479
	.word	16
	.word	4
	.word	_Label_2480
	.word	20
	.word	4
	.word	_Label_2481
	.word	24
	.word	4
	.word	0
_Label_2476:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2477:
	.ascii	"Pself\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2479:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2480:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2481:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	2512,r13		! source line 2512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_2482 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0WH",r10
_Label_2483:
!	jmp	_Label_2484
_Label_2484:
	mov	2525,r13		! source line 2525
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   _temp_2486 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2487) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2486  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_2488 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2531,r13		! source line 2531
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2497 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2491
	cmp	r1,2
	be	_Label_2492
	cmp	r1,3
	be	_Label_2493
	cmp	r1,4
	be	_Label_2494
	cmp	r1,5
	be	_Label_2495
	cmp	r1,6
	be	_Label_2496
	jmp	_Label_2489
! CASE 1...
_Label_2491:
! SEND STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0SE",r10
!   _temp_2498 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2492:
! CALL STATEMENT...
!   _temp_2499 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2536,r13		! source line 2536
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2493:
! CALL STATEMENT...
!   _temp_2500 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2538,r13		! source line 2538
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2494:
! CALL STATEMENT...
!   _temp_2501 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2540,r13		! source line 2540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2495:
! BREAK STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0BR",r10
	jmp	_Label_2490
! CASE 6...
_Label_2496:
! CALL STATEMENT...
!   _temp_2502 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2502  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2546,r13		! source line 2546
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2489:
! CALL STATEMENT...
!   _temp_2503 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2548,r13		! source line 2548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2490:
! END WHILE...
	jmp	_Label_2483
_Label_2485:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2504
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2506
	.word	12
	.word	4
	.word	_Label_2507
	.word	16
	.word	4
	.word	_Label_2508
	.word	20
	.word	4
	.word	_Label_2509
	.word	-12
	.word	4
	.word	_Label_2510
	.word	-16
	.word	4
	.word	_Label_2511
	.word	-20
	.word	4
	.word	_Label_2512
	.word	-24
	.word	4
	.word	_Label_2513
	.word	-28
	.word	4
	.word	_Label_2514
	.word	-32
	.word	4
	.word	_Label_2515
	.word	-36
	.word	4
	.word	_Label_2516
	.word	-40
	.word	4
	.word	_Label_2517
	.word	-44
	.word	4
	.word	_Label_2518
	.word	-48
	.word	4
	.word	_Label_2519
	.word	-52
	.word	4
	.word	0
_Label_2504:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2505:
	.ascii	"Pself\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2507:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2508:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2557,r13		! source line 2557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2520
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2521
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2522
	.word	12
	.word	4
	.word	_Label_2523
	.word	16
	.word	4
	.word	_Label_2524
	.word	20
	.word	4
	.word	_Label_2525
	.word	24
	.word	4
	.word	0
_Label_2520:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2521:
	.ascii	"Pself\0"
	.align
_Label_2522:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2523:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2524:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2525:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2526
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2526:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2527
	.word	_sourceFileName
	.word	404		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2527:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	2588,r13		! source line 2588
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2528 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2528  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2595,r13		! source line 2595
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
!   _temp_2530 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_2533 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   _temp_2534 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2536 = &_temp_2535
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2536 = _temp_2536 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2538 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3459:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3459
!   _temp_2538 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2540:
!   Data Move: *_temp_2536 = _temp_2538  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3460:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3460
!   _temp_2536 = _temp_2536 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2537 = _temp_2537 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2537) then goto _Label_2540
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2540
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2541 = &_temp_2535
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3461
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3461:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2534 = *_temp_2541  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3462:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3462
! FOR STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2546 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2547 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2546  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2542:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2547 then goto _Label_2545		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2545
_Label_2543:
	mov	2605,r13		! source line 2605
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   _temp_2548 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2548 [i ] into _temp_2549
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2550 = _temp_2549 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2550 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   _temp_2551 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2551 [i ] into _temp_2552
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0SE",r10
!   _temp_2554 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2554 [i ] into _temp_2555
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2553 = _temp_2555		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2556 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2553  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2544:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2542
! END FOR
_Label_2545:
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   _temp_2559 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
!   _temp_2560 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2562 = &_temp_2561
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2562 = _temp_2562 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2564 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3463:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3463
!   _temp_2564 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2566:
!   Data Move: *_temp_2562 = _temp_2564  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3464:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3464
!   _temp_2562 = _temp_2562 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2563 = _temp_2563 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2563) then goto _Label_2566
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2566
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2567 = &_temp_2561
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3465
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3465:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2560 = *_temp_2567  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3466:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3466
! FOR STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2572 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2573 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2572  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2568:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2573 then goto _Label_2571		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2571
_Label_2569:
	mov	2617,r13		! source line 2617
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   _temp_2574 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2574 [i ] into _temp_2575
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2576 = _temp_2575 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2576 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2578 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2578 [i ] into _temp_2579
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2577 = _temp_2579		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2580 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2577  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2570:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2568
! END FOR
_Label_2571:
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3467:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3467
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   _temp_2582 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2583 = _temp_2582 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2583 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   _temp_2584 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_2585 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2586
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2587
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2588
	.word	-12
	.word	4
	.word	_Label_2589
	.word	-16
	.word	4
	.word	_Label_2590
	.word	-20
	.word	4
	.word	_Label_2591
	.word	-24
	.word	4
	.word	_Label_2592
	.word	-28
	.word	4
	.word	_Label_2593
	.word	-32
	.word	4
	.word	_Label_2594
	.word	-36
	.word	4
	.word	_Label_2595
	.word	-40
	.word	4
	.word	_Label_2596
	.word	-44
	.word	4
	.word	_Label_2597
	.word	-48
	.word	4
	.word	_Label_2598
	.word	-52
	.word	4
	.word	_Label_2599
	.word	-56
	.word	4
	.word	_Label_2600
	.word	-60
	.word	4
	.word	_Label_2601
	.word	-64
	.word	4
	.word	_Label_2602
	.word	-68
	.word	4
	.word	_Label_2603
	.word	-72
	.word	4
	.word	_Label_2604
	.word	-100
	.word	28
	.word	_Label_2605
	.word	-104
	.word	4
	.word	_Label_2606
	.word	-108
	.word	4
	.word	_Label_2607
	.word	-392
	.word	284
	.word	_Label_2608
	.word	-396
	.word	4
	.word	_Label_2609
	.word	-400
	.word	4
	.word	_Label_2610
	.word	-404
	.word	4
	.word	_Label_2611
	.word	-408
	.word	4
	.word	_Label_2612
	.word	-412
	.word	4
	.word	_Label_2613
	.word	-416
	.word	4
	.word	_Label_2614
	.word	-420
	.word	4
	.word	_Label_2615
	.word	-424
	.word	4
	.word	_Label_2616
	.word	-428
	.word	4
	.word	_Label_2617
	.word	-432
	.word	4
	.word	_Label_2618
	.word	-436
	.word	4
	.word	_Label_2619
	.word	-440
	.word	4
	.word	_Label_2620
	.word	-444
	.word	4
	.word	_Label_2621
	.word	-448
	.word	4
	.word	_Label_2622
	.word	-452
	.word	4
	.word	_Label_2623
	.word	-456
	.word	4
	.word	_Label_2624
	.word	-460
	.word	4
	.word	_Label_2625
	.word	-500
	.word	40
	.word	_Label_2626
	.word	-504
	.word	4
	.word	_Label_2627
	.word	-508
	.word	4
	.word	_Label_2628
	.word	-912
	.word	404
	.word	_Label_2629
	.word	-916
	.word	4
	.word	_Label_2630
	.word	-920
	.word	4
	.word	_Label_2631
	.word	-924
	.word	4
	.word	_Label_2632
	.word	-928
	.word	4
	.word	_Label_2633
	.word	-932
	.word	4
	.word	_Label_2634
	.word	-936
	.word	4
	.word	_Label_2635
	.word	-940
	.word	4
	.word	_Label_2636
	.word	-944
	.word	4
	.word	0
_Label_2586:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2587:
	.ascii	"Pself\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2636:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	2637,r13		! source line 2637
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_2637 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2638 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2640,r13		! source line 2640
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2643 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2644 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2643  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2639:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2644 then goto _Label_2642		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2642
_Label_2640:
	mov	2641,r13		! source line 2641
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2645 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2645  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2646 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2646  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_2647 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2647 [i ] into _temp_2648
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2641:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2639
! END FOR
_Label_2642:
! CALL STATEMENT...
!   _temp_2649 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2649  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2647,r13		! source line 2647
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0SE",r10
!   _temp_2650 = _function_231_printFCB
	set	_function_231_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2651 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2650  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2652 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2652  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2657 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2658 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2657  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2653:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2658 then goto _Label_2656		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2656
_Label_2654:
	mov	2651,r13		! source line 2651
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2659 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2659  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2660 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2660  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2662 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2662 [i ] into _temp_2663
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2661 = _temp_2663		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2664 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2664  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_2665 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2665 [i ] into _temp_2666
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2655:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2653
! END FOR
_Label_2656:
! CALL STATEMENT...
!   _temp_2667 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2667  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2659,r13		! source line 2659
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   _temp_2668 = _function_230_printOpen
	set	_function_230_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2669 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2668  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_2670 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2671
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2673
	.word	-12
	.word	4
	.word	_Label_2674
	.word	-16
	.word	4
	.word	_Label_2675
	.word	-20
	.word	4
	.word	_Label_2676
	.word	-24
	.word	4
	.word	_Label_2677
	.word	-28
	.word	4
	.word	_Label_2678
	.word	-32
	.word	4
	.word	_Label_2679
	.word	-36
	.word	4
	.word	_Label_2680
	.word	-40
	.word	4
	.word	_Label_2681
	.word	-44
	.word	4
	.word	_Label_2682
	.word	-48
	.word	4
	.word	_Label_2683
	.word	-52
	.word	4
	.word	_Label_2684
	.word	-56
	.word	4
	.word	_Label_2685
	.word	-60
	.word	4
	.word	_Label_2686
	.word	-64
	.word	4
	.word	_Label_2687
	.word	-68
	.word	4
	.word	_Label_2688
	.word	-72
	.word	4
	.word	_Label_2689
	.word	-76
	.word	4
	.word	_Label_2690
	.word	-80
	.word	4
	.word	_Label_2691
	.word	-84
	.word	4
	.word	_Label_2692
	.word	-88
	.word	4
	.word	_Label_2693
	.word	-92
	.word	4
	.word	_Label_2694
	.word	-96
	.word	4
	.word	_Label_2695
	.word	-100
	.word	4
	.word	_Label_2696
	.word	-104
	.word	4
	.word	_Label_2697
	.word	-108
	.word	4
	.word	_Label_2698
	.word	-112
	.word	4
	.word	_Label_2699
	.word	-116
	.word	4
	.word	0
_Label_2671:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2672:
	.ascii	"Pself\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2699:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	2666,r13		! source line 2666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
	mov	2682,r13		! source line 2682
	mov	"\0\0SE",r10
!   _temp_2700 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2701
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2701
	jmp	_Label_2702
_Label_2701:
! THEN...
	mov	2684,r13		! source line 2684
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2702:
! SEND STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0SE",r10
!   _temp_2703 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0WH",r10
_Label_2704:
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_2707 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2705 else goto _Label_2706
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2706
	jmp	_Label_2705
_Label_2705:
	mov	2689,r13		! source line 2689
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_2708 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2709 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2708  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2704
_Label_2706:
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_2710 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2711 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2711 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2712 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2712 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2713 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2713 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0SE",r10
!   _temp_2714 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2715
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2717
	.word	12
	.word	4
	.word	_Label_2718
	.word	-12
	.word	4
	.word	_Label_2719
	.word	-16
	.word	4
	.word	_Label_2720
	.word	-20
	.word	4
	.word	_Label_2721
	.word	-24
	.word	4
	.word	_Label_2722
	.word	-28
	.word	4
	.word	_Label_2723
	.word	-32
	.word	4
	.word	_Label_2724
	.word	-36
	.word	4
	.word	_Label_2725
	.word	-40
	.word	4
	.word	_Label_2726
	.word	-44
	.word	4
	.word	_Label_2727
	.word	-48
	.word	4
	.word	_Label_2728
	.word	-52
	.word	4
	.word	_Label_2729
	.word	-56
	.word	4
	.word	0
_Label_2715:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2716:
	.ascii	"Pself\0"
	.align
_Label_2717:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2728:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2729:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	2707,r13		! source line 2707
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2731		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2731
!	jmp	_Label_2730
_Label_2730:
! THEN...
	mov	2738,r13		! source line 2738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2732 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2732  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2738,r13		! source line 2738
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2731:
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0WH",r10
_Label_2733:
!   if numFiles <= 0 then goto _Label_2735		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2735
!	jmp	_Label_2734
_Label_2734:
	mov	2748,r13		! source line 2748
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2736 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2736  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CA",r10
	call	_function_232_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2737 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2737  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2751,r13		! source line 2751
	mov	"\0\0CA",r10
	call	_function_232_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2738 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2738  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2753,r13		! source line 2753
	mov	"\0\0CA",r10
	call	_function_232_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2742 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2742 then goto _Label_2740		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2740
!	jmp	_Label_2741
_Label_2741:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2744
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2743 = _temp_2744		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2743  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2756,r13		! source line 2756
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2739 else goto _Label_2740
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2740
	jmp	_Label_2739
_Label_2739:
! THEN...
	mov	2757,r13		! source line 2757
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0BR",r10
	jmp	_Label_2735
! END IF...
_Label_2740:
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2733
_Label_2735:
! IF STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2746		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2746
!	jmp	_Label_2745
_Label_2745:
! THEN...
	mov	2765,r13		! source line 2765
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2746:
! SEND STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
!   _temp_2747 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2752 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2753 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2752  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2748:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2753 then goto _Label_2751		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2751
_Label_2749:
	mov	2770,r13		! source line 2770
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   _temp_2754 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2754 [i ] into _temp_2755
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2755		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2758 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2758 != start then goto _Label_2757		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2757
!	jmp	_Label_2756
_Label_2756:
! THEN...
	mov	2773,r13		! source line 2773
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2761 = _temp_2762 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2760 = _temp_2761  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
!   _temp_2764 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2757:
!   Increment the FOR-LOOP index variable and jump back
_Label_2750:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2748
! END FOR
_Label_2751:
! WHILE STATEMENT...
	mov	2780,r13		! source line 2780
	mov	"\0\0WH",r10
_Label_2765:
	mov	2780,r13		! source line 2780
	mov	"\0\0SE",r10
!   _temp_2768 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2766 else goto _Label_2767
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2767
	jmp	_Label_2766
_Label_2766:
	mov	2780,r13		! source line 2780
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0SE",r10
!   _temp_2769 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2770 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2769  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2765
_Label_2767:
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   _temp_2771 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0SE",r10
!   _temp_2772 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2773 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2774 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2774 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2775 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2775 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2780 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2779 = *_temp_2780  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2779 < 0 then goto _Label_2778		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2778
	jmp	_Label_2776
_Label_2778:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2781 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2781 ) then goto _Label_2777		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2777
!	jmp	_Label_2776
_Label_2776:
! THEN...
	mov	2793,r13		! source line 2793
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2782 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2782  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2793,r13		! source line 2793
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2777:
! RETURN STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2783
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2785
	.word	12
	.word	4
	.word	_Label_2786
	.word	-12
	.word	4
	.word	_Label_2787
	.word	-16
	.word	4
	.word	_Label_2788
	.word	-20
	.word	4
	.word	_Label_2789
	.word	-24
	.word	4
	.word	_Label_2790
	.word	-28
	.word	4
	.word	_Label_2791
	.word	-32
	.word	4
	.word	_Label_2792
	.word	-36
	.word	4
	.word	_Label_2793
	.word	-40
	.word	4
	.word	_Label_2794
	.word	-44
	.word	4
	.word	_Label_2795
	.word	-48
	.word	4
	.word	_Label_2796
	.word	-52
	.word	4
	.word	_Label_2797
	.word	-56
	.word	4
	.word	_Label_2798
	.word	-60
	.word	4
	.word	_Label_2799
	.word	-64
	.word	4
	.word	_Label_2800
	.word	-68
	.word	4
	.word	_Label_2801
	.word	-72
	.word	4
	.word	_Label_2802
	.word	-76
	.word	4
	.word	_Label_2803
	.word	-80
	.word	4
	.word	_Label_2804
	.word	-84
	.word	4
	.word	_Label_2805
	.word	-88
	.word	4
	.word	_Label_2806
	.word	-92
	.word	4
	.word	_Label_2807
	.word	-96
	.word	4
	.word	_Label_2808
	.word	-100
	.word	4
	.word	_Label_2809
	.word	-104
	.word	4
	.word	_Label_2810
	.word	-108
	.word	4
	.word	_Label_2811
	.word	-112
	.word	4
	.word	_Label_2812
	.word	-116
	.word	4
	.word	_Label_2813
	.word	-120
	.word	4
	.word	_Label_2814
	.word	-124
	.word	4
	.word	_Label_2815
	.word	-128
	.word	4
	.word	_Label_2816
	.word	-132
	.word	4
	.word	_Label_2817
	.word	-136
	.word	4
	.word	_Label_2818
	.word	-140
	.word	4
	.word	_Label_2819
	.word	-144
	.word	4
	.word	_Label_2820
	.word	-148
	.word	4
	.word	_Label_2821
	.word	-152
	.word	4
	.word	_Label_2822
	.word	-156
	.word	4
	.word	_Label_2823
	.word	-160
	.word	4
	.word	0
_Label_2783:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2784:
	.ascii	"Pself\0"
	.align
_Label_2785:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2817:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2819:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2820:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2821:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2822:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2823:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	2808,r13		! source line 2808
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0IF",r10
!   _temp_2826 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2826 then goto _Label_2825		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2825
!	jmp	_Label_2824
_Label_2824:
! THEN...
	mov	2811,r13		! source line 2811
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2825:
! SEND STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0SE",r10
!   _temp_2827 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0SE",r10
!   _temp_2828 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2829 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2829  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2830 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2833 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2832 = *_temp_2833  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2831 = _temp_2832 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2830 = _temp_2831  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2837 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2836 = *_temp_2837  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2836 > 0 then goto _Label_2835		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2835
!	jmp	_Label_2834
_Label_2834:
! THEN...
	mov	2818,r13		! source line 2818
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0SE",r10
!   _temp_2838 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0SE",r10
!   _temp_2839 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2840 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2839  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2844 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2843 = *_temp_2844  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2842 = _temp_2843 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2841 = _temp_2842  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2848 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2847 = *_temp_2848  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2847 > 0 then goto _Label_2846		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2846
!	jmp	_Label_2845
_Label_2845:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_2849 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_2850 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2851 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2850  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2846:
! END IF...
_Label_2835:
! SEND STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0SE",r10
!   _temp_2852 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2853
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2855
	.word	12
	.word	4
	.word	_Label_2856
	.word	-12
	.word	4
	.word	_Label_2857
	.word	-16
	.word	4
	.word	_Label_2858
	.word	-20
	.word	4
	.word	_Label_2859
	.word	-24
	.word	4
	.word	_Label_2860
	.word	-28
	.word	4
	.word	_Label_2861
	.word	-32
	.word	4
	.word	_Label_2862
	.word	-36
	.word	4
	.word	_Label_2863
	.word	-40
	.word	4
	.word	_Label_2864
	.word	-44
	.word	4
	.word	_Label_2865
	.word	-48
	.word	4
	.word	_Label_2866
	.word	-52
	.word	4
	.word	_Label_2867
	.word	-56
	.word	4
	.word	_Label_2868
	.word	-60
	.word	4
	.word	_Label_2869
	.word	-64
	.word	4
	.word	_Label_2870
	.word	-68
	.word	4
	.word	_Label_2871
	.word	-72
	.word	4
	.word	_Label_2872
	.word	-76
	.word	4
	.word	_Label_2873
	.word	-80
	.word	4
	.word	_Label_2874
	.word	-84
	.word	4
	.word	_Label_2875
	.word	-88
	.word	4
	.word	_Label_2876
	.word	-92
	.word	4
	.word	_Label_2877
	.word	-96
	.word	4
	.word	_Label_2878
	.word	-100
	.word	4
	.word	_Label_2879
	.word	-104
	.word	4
	.word	0
_Label_2853:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2854:
	.ascii	"Pself\0"
	.align
_Label_2855:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2879:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	2831,r13		! source line 2831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2883 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2882 = *_temp_2883  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2882) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2884 = _temp_2882 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2884 ) then goto _Label_2881		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2881
!	jmp	_Label_2880
_Label_2880:
! THEN...
	mov	2837,r13		! source line 2837
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2889 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2888 = *_temp_2889  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2888) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = _temp_2888 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2887 = *_temp_2890  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2887 >= 0 then goto _Label_2886		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2838,r13		! source line 2838
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2891 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2891  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2838,r13		! source line 2838
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2886:
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2892 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2892) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2894 = _temp_2892 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2894 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2898 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2897 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = _temp_2897 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2896 = *_temp_2899  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2902 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2901 = *_temp_2902  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2901) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2903 = _temp_2901 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2900 = *_temp_2903  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2895 = _temp_2896 + _temp_2900		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2906 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2905 = *_temp_2906  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2905) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2907 = _temp_2905 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2904 = *_temp_2907  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2908 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2895  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2904  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2881:
! RETURN STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2909
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2911
	.word	12
	.word	4
	.word	_Label_2912
	.word	-12
	.word	4
	.word	_Label_2913
	.word	-16
	.word	4
	.word	_Label_2914
	.word	-20
	.word	4
	.word	_Label_2915
	.word	-24
	.word	4
	.word	_Label_2916
	.word	-28
	.word	4
	.word	_Label_2917
	.word	-32
	.word	4
	.word	_Label_2918
	.word	-36
	.word	4
	.word	_Label_2919
	.word	-40
	.word	4
	.word	_Label_2920
	.word	-44
	.word	4
	.word	_Label_2921
	.word	-48
	.word	4
	.word	_Label_2922
	.word	-52
	.word	4
	.word	_Label_2923
	.word	-56
	.word	4
	.word	_Label_2924
	.word	-60
	.word	4
	.word	_Label_2925
	.word	-64
	.word	4
	.word	_Label_2926
	.word	-68
	.word	4
	.word	_Label_2927
	.word	-72
	.word	4
	.word	_Label_2928
	.word	-76
	.word	4
	.word	_Label_2929
	.word	-80
	.word	4
	.word	_Label_2930
	.word	-84
	.word	4
	.word	_Label_2931
	.word	-88
	.word	4
	.word	_Label_2932
	.word	-92
	.word	4
	.word	_Label_2933
	.word	-96
	.word	4
	.word	_Label_2934
	.word	-100
	.word	4
	.word	_Label_2935
	.word	-104
	.word	4
	.word	_Label_2936
	.word	-108
	.word	4
	.word	0
_Label_2909:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2910:
	.ascii	"Pself\0"
	.align
_Label_2911:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	2850,r13		! source line 2850
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
!   _temp_2937 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2943		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2943
!   _temp_2942 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2944
_Label_2943:
!   _temp_2942 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2944:
!   if _temp_2942 then goto _Label_2941 else goto _Label_2938
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2938
	jmp	_Label_2941
_Label_2941:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2947 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2946 = *_temp_2947  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2946 == 0 then goto _Label_2948		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2948
!   _temp_2945 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2949
_Label_2948:
!   _temp_2945 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2949:
!   if _temp_2945 then goto _Label_2940 else goto _Label_2938
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2938
	jmp	_Label_2940
_Label_2940:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2952 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2951 = *_temp_2952  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2951) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2953 = _temp_2951 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2950 = *_temp_2953  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2950 >= 0 then goto _Label_2939		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2939
!	jmp	_Label_2938
_Label_2938:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2954 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2954  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2867,r13		! source line 2867
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2939:
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2955 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2955  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0WH",r10
_Label_2956:
!   if numBytes <= 0 then goto _Label_2958		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2958
!	jmp	_Label_2957
_Label_2957:
	mov	2870,r13		! source line 2870
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2962 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2961 = *_temp_2962  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2961 == sector then goto _Label_2960		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2960
!	jmp	_Label_2959
_Label_2959:
! THEN...
	mov	2885,r13		! source line 2885
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2963) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2966 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2965 = *_temp_2966  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2964 = sector + _temp_2965		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2968 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2967 = *_temp_2968  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2969 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2964  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2967  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2970 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2970 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2971 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2971 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2960:
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2973 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2972 = *_temp_2973  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2972 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
!   _temp_2974 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2974  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2956
_Label_2958:
! SEND STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0SE",r10
!   _temp_2975 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2976
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2978
	.word	12
	.word	4
	.word	_Label_2979
	.word	16
	.word	4
	.word	_Label_2980
	.word	20
	.word	4
	.word	_Label_2981
	.word	24
	.word	4
	.word	_Label_2982
	.word	-16
	.word	4
	.word	_Label_2983
	.word	-20
	.word	4
	.word	_Label_2984
	.word	-24
	.word	4
	.word	_Label_2985
	.word	-28
	.word	4
	.word	_Label_2986
	.word	-32
	.word	4
	.word	_Label_2987
	.word	-36
	.word	4
	.word	_Label_2988
	.word	-40
	.word	4
	.word	_Label_2989
	.word	-44
	.word	4
	.word	_Label_2990
	.word	-48
	.word	4
	.word	_Label_2991
	.word	-52
	.word	4
	.word	_Label_2992
	.word	-56
	.word	4
	.word	_Label_2993
	.word	-60
	.word	4
	.word	_Label_2994
	.word	-64
	.word	4
	.word	_Label_2995
	.word	-68
	.word	4
	.word	_Label_2996
	.word	-72
	.word	4
	.word	_Label_2997
	.word	-76
	.word	4
	.word	_Label_2998
	.word	-80
	.word	4
	.word	_Label_2999
	.word	-84
	.word	4
	.word	_Label_3000
	.word	-88
	.word	4
	.word	_Label_3001
	.word	-92
	.word	4
	.word	_Label_3002
	.word	-96
	.word	4
	.word	_Label_3003
	.word	-100
	.word	4
	.word	_Label_3004
	.word	-104
	.word	4
	.word	_Label_3005
	.word	-9
	.word	1
	.word	_Label_3006
	.word	-10
	.word	1
	.word	_Label_3007
	.word	-108
	.word	4
	.word	_Label_3008
	.word	-112
	.word	4
	.word	_Label_3009
	.word	-116
	.word	4
	.word	_Label_3010
	.word	-120
	.word	4
	.word	_Label_3011
	.word	-124
	.word	4
	.word	_Label_3012
	.word	-128
	.word	4
	.word	0
_Label_2976:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2977:
	.ascii	"Pself\0"
	.align
_Label_2978:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2979:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2980:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3005:
	.byte	'C'
	.ascii	"_temp_2945\0"
	.align
_Label_3006:
	.byte	'C'
	.ascii	"_temp_2942\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_3008:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3009:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3010:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3011:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3012:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	2914,r13		! source line 2914
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0SE",r10
!   _temp_3013 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3019		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3019
!   _temp_3018 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3020
_Label_3019:
!   _temp_3018 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3020:
!   if _temp_3018 then goto _Label_3017 else goto _Label_3014
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3014
	jmp	_Label_3017
_Label_3017:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3023 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3022 = *_temp_3023  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3022 == 0 then goto _Label_3024		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3024
!   _temp_3021 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3025
_Label_3024:
!   _temp_3021 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3025:
!   if _temp_3021 then goto _Label_3016 else goto _Label_3014
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3014
	jmp	_Label_3016
_Label_3016:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3028 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3027 = *_temp_3028  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3027) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3029 = _temp_3027 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3026 = *_temp_3029  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3026 >= 0 then goto _Label_3015		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3015
!	jmp	_Label_3014
_Label_3014:
! THEN...
	mov	2932,r13		! source line 2932
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3030 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3030  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2932,r13		! source line 2932
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3015:
! ASSIGNMENT STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3031 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3031  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0WH",r10
_Label_3032:
!   if numBytes <= 0 then goto _Label_3034		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3034
!	jmp	_Label_3033
_Label_3033:
	mov	2935,r13		! source line 2935
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3038 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3037 = *_temp_3038  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3037 == sector then goto _Label_3036		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3036
!	jmp	_Label_3035
_Label_3035:
! THEN...
	mov	2951,r13		! source line 2951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3039) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3036:
! ASSIGNMENT STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3041 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3040 = *_temp_3041  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3040 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
!   _temp_3042 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3042  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3046 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3045 = *_temp_3046  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3045 != sector then goto _Label_3044		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3044
!	jmp	_Label_3043
_Label_3043:
	jmp	_Label_3047
_Label_3044:
! ELSE...
	mov	2957,r13		! source line 2957
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3050
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3050
	jmp	_Label_3049
_Label_3050:
!   if bytesToMove != 8192 then goto _Label_3049		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3049
!	jmp	_Label_3048
_Label_3048:
	jmp	_Label_3051
_Label_3049:
! ELSE...
	mov	2961,r13		! source line 2961
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3054 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3053 = *_temp_3054  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3052 = sector + _temp_3053		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3056 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3055 = *_temp_3056  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3057 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3052  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3055  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3051:
! END IF...
_Label_3047:
! ASSIGNMENT STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3058 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3058 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3059 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3059 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3032
_Label_3034:
! SEND STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0SE",r10
!   _temp_3060 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3061
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3063
	.word	12
	.word	4
	.word	_Label_3064
	.word	16
	.word	4
	.word	_Label_3065
	.word	20
	.word	4
	.word	_Label_3066
	.word	24
	.word	4
	.word	_Label_3067
	.word	-16
	.word	4
	.word	_Label_3068
	.word	-20
	.word	4
	.word	_Label_3069
	.word	-24
	.word	4
	.word	_Label_3070
	.word	-28
	.word	4
	.word	_Label_3071
	.word	-32
	.word	4
	.word	_Label_3072
	.word	-36
	.word	4
	.word	_Label_3073
	.word	-40
	.word	4
	.word	_Label_3074
	.word	-44
	.word	4
	.word	_Label_3075
	.word	-48
	.word	4
	.word	_Label_3076
	.word	-52
	.word	4
	.word	_Label_3077
	.word	-56
	.word	4
	.word	_Label_3078
	.word	-60
	.word	4
	.word	_Label_3079
	.word	-64
	.word	4
	.word	_Label_3080
	.word	-68
	.word	4
	.word	_Label_3081
	.word	-72
	.word	4
	.word	_Label_3082
	.word	-76
	.word	4
	.word	_Label_3083
	.word	-80
	.word	4
	.word	_Label_3084
	.word	-84
	.word	4
	.word	_Label_3085
	.word	-88
	.word	4
	.word	_Label_3086
	.word	-92
	.word	4
	.word	_Label_3087
	.word	-96
	.word	4
	.word	_Label_3088
	.word	-100
	.word	4
	.word	_Label_3089
	.word	-104
	.word	4
	.word	_Label_3090
	.word	-108
	.word	4
	.word	_Label_3091
	.word	-112
	.word	4
	.word	_Label_3092
	.word	-9
	.word	1
	.word	_Label_3093
	.word	-10
	.word	1
	.word	_Label_3094
	.word	-116
	.word	4
	.word	_Label_3095
	.word	-120
	.word	4
	.word	_Label_3096
	.word	-124
	.word	4
	.word	_Label_3097
	.word	-128
	.word	4
	.word	_Label_3098
	.word	-132
	.word	4
	.word	_Label_3099
	.word	-136
	.word	4
	.word	0
_Label_3061:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3062:
	.ascii	"Pself\0"
	.align
_Label_3063:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3064:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3065:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3066:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3092:
	.byte	'C'
	.ascii	"_temp_3021\0"
	.align
_Label_3093:
	.byte	'C'
	.ascii	"_temp_3018\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3095:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3096:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3097:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3098:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3099:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3100
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3100:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3101
	.word	_sourceFileName
	.word	429		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3101:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	3018,r13		! source line 3018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0AS",r10
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
!   _temp_3102 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3103
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3104
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3105
	.word	-12
	.word	4
	.word	0
_Label_3103:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3104:
	.ascii	"Pself\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	3028,r13		! source line 3028
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3106 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3106  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3029,r13		! source line 3029
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3030,r13		! source line 3030
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3107 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3107  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3031,r13		! source line 3031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3032,r13		! source line 3032
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3108 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3108  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3033,r13		! source line 3033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3034,r13		! source line 3034
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3109 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3109  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3035,r13		! source line 3035
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3036,r13		! source line 3036
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3110 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3110  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3037,r13		! source line 3037
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3038,r13		! source line 3038
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3111 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3111  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3039,r13		! source line 3039
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3040,r13		! source line 3040
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3041,r13		! source line 3041
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3112
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3114
	.word	-12
	.word	4
	.word	_Label_3115
	.word	-16
	.word	4
	.word	_Label_3116
	.word	-20
	.word	4
	.word	_Label_3117
	.word	-24
	.word	4
	.word	_Label_3118
	.word	-28
	.word	4
	.word	_Label_3119
	.word	-32
	.word	4
	.word	0
_Label_3112:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3113:
	.ascii	"Pself\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3120
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3120:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3121
	.word	_sourceFileName
	.word	446		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3121:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	3052,r13		! source line 3052
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3122 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3122  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3053,r13		! source line 3053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3054,r13		! source line 3054
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3123 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3055,r13		! source line 3055
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3125		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3125
!	jmp	_Label_3124
_Label_3124:
! THEN...
	mov	3057,r13		! source line 3057
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3126
_Label_3125:
! ELSE...
	mov	3059,r13		! source line 3059
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3127 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3127  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3059,r13		! source line 3059
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3126:
! RETURN STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3128
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3130
	.word	-12
	.word	4
	.word	_Label_3131
	.word	-16
	.word	4
	.word	_Label_3132
	.word	-20
	.word	4
	.word	0
_Label_3128:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3129:
	.ascii	"Pself\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	3065,r13		! source line 3065
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0SE",r10
!   _temp_3133 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3134 = _temp_3133 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   _temp_3135 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3136 = _temp_3135 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0RE",r10
	mov	3079,r13		! source line 3079
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3139 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3138  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3137  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3137  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3140
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3142
	.word	12
	.word	4
	.word	_Label_3143
	.word	16
	.word	4
	.word	_Label_3144
	.word	-16
	.word	4
	.word	_Label_3145
	.word	-20
	.word	4
	.word	_Label_3146
	.word	-9
	.word	1
	.word	_Label_3147
	.word	-24
	.word	4
	.word	_Label_3148
	.word	-28
	.word	4
	.word	_Label_3149
	.word	-32
	.word	4
	.word	_Label_3150
	.word	-36
	.word	4
	.word	_Label_3151
	.word	-40
	.word	4
	.word	0
_Label_3140:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3141:
	.ascii	"Pself\0"
	.align
_Label_3142:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3143:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3146:
	.byte	'C'
	.ascii	"_temp_3137\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	3084,r13		! source line 3084
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0IF",r10
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
!   _temp_3155 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3156) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3155  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3154  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3154 then goto _Label_3153 else goto _Label_3152
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3152
	jmp	_Label_3153
_Label_3152:
! THEN...
	mov	3090,r13		! source line 3090
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3157 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3090,r13		! source line 3090
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3153:
! RETURN STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3158
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3160
	.word	-16
	.word	4
	.word	_Label_3161
	.word	-20
	.word	4
	.word	_Label_3162
	.word	-24
	.word	4
	.word	_Label_3163
	.word	-9
	.word	1
	.word	_Label_3164
	.word	-28
	.word	4
	.word	0
_Label_3158:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3159:
	.ascii	"Pself\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3163:
	.byte	'C'
	.ascii	"_temp_3154\0"
	.align
_Label_3164:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	3097,r13		! source line 3097
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3168 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3167 = *_temp_3168  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3167) then goto _Label_3166
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3166
!	jmp	_Label_3165
_Label_3165:
! THEN...
	mov	3124,r13		! source line 3124
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3169 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3169  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3124,r13		! source line 3124
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3166:
! IF STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0IF",r10
	mov	3128,r13		! source line 3128
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3173) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3172  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3172 == 1112300152 then goto _Label_3171		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3171
!	jmp	_Label_3170
_Label_3170:
! THEN...
	mov	3129,r13		! source line 3129
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3174 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3174  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3129,r13		! source line 3129
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3171:
! ASSIGNMENT STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0AS",r10
	mov	3134,r13		! source line 3134
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3175) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0AS",r10
	mov	3135,r13		! source line 3135
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3176) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	3136,r13		! source line 3136
	mov	"\0\0AS",r10
	mov	3136,r13		! source line 3136
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3177) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0AS",r10
	mov	3137,r13		! source line 3137
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3178) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0AS",r10
	mov	3138,r13		! source line 3138
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3179) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0AS",r10
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3180) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0IF",r10
!   _temp_3183 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3183) then goto _Label_3182
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3182
!	jmp	_Label_3181
_Label_3181:
! THEN...
	mov	3143,r13		! source line 3143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3184 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3143,r13		! source line 3143
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3182:
! ASSIGNMENT STATEMENT...
	mov	3146,r13		! source line 3146
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3186
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3186
!	jmp	_Label_3185
_Label_3185:
! THEN...
	mov	3151,r13		! source line 3151
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3187 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3187  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3151,r13		! source line 3151
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3186:
! IF STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0IF",r10
!   _temp_3190 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3190) then goto _Label_3189
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3189
!	jmp	_Label_3188
_Label_3188:
! THEN...
	mov	3157,r13		! source line 3157
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3191 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3191  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3157,r13		! source line 3157
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3189:
! IF STATEMENT...
	mov	3160,r13		! source line 3160
	mov	"\0\0IF",r10
!   _temp_3194 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3194 then goto _Label_3193		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3193
!	jmp	_Label_3192
_Label_3192:
! THEN...
	mov	3161,r13		! source line 3161
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3195 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3195  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3161,r13		! source line 3161
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3193:
! ASSIGNMENT STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3167,r13		! source line 3167
	mov	"\0\0IF",r10
!   _temp_3198 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3198) then goto _Label_3197
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3197
!	jmp	_Label_3196
_Label_3196:
! THEN...
	mov	3168,r13		! source line 3168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3199 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3199  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3169,r13		! source line 3169
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3197:
! IF STATEMENT...
	mov	3171,r13		! source line 3171
	mov	"\0\0IF",r10
!   _temp_3202 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3202 then goto _Label_3201		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3201
!	jmp	_Label_3200
_Label_3200:
! THEN...
	mov	3172,r13		! source line 3172
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3203 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3203  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3172,r13		! source line 3172
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3173,r13		! source line 3173
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3201:
! ASSIGNMENT STATEMENT...
	mov	3175,r13		! source line 3175
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3178,r13		! source line 3178
	mov	"\0\0AS",r10
!   _temp_3206 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3205 = _temp_3206 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3204 = _temp_3205 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3204 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3208		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3208
!	jmp	_Label_3207
_Label_3207:
! THEN...
	mov	3194,r13		! source line 3194
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3209 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3209  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3194,r13		! source line 3194
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3210 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3210  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3195,r13		! source line 3195
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3211 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3211  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3196,r13		! source line 3196
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3208:
! SEND STATEMENT...
	mov	3199,r13		! source line 3199
	mov	"\0\0SE",r10
!   _temp_3212 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0IF",r10
	mov	3205,r13		! source line 3205
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3216) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3215  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3215 == 707406378 then goto _Label_3214		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3214
!	jmp	_Label_3213
_Label_3213:
! THEN...
	mov	3206,r13		! source line 3206
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3217 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3217  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3206,r13		! source line 3206
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3207,r13		! source line 3207
	mov	"\0\0SE",r10
!   _temp_3218 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3208,r13		! source line 3208
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3214:
! ASSIGNMENT STATEMENT...
	mov	3212,r13		! source line 3212
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3223 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3224 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3223  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3219:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3224 then goto _Label_3222		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3222
_Label_3220:
	mov	3213,r13		! source line 3213
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3214,r13		! source line 3214
	mov	"\0\0AS",r10
	mov	3214,r13		! source line 3214
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0IF",r10
	mov	3217,r13		! source line 3217
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3228) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3227  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3227 then goto _Label_3226 else goto _Label_3225
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3225
	jmp	_Label_3226
_Label_3225:
! THEN...
	mov	3218,r13		! source line 3218
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3229 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3229  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3218,r13		! source line 3218
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3219,r13		! source line 3219
	mov	"\0\0SE",r10
!   _temp_3230 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3220,r13		! source line 3220
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3226:
! SEND STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3221:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3219
! END FOR
_Label_3222:
! IF STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0IF",r10
	mov	3227,r13		! source line 3227
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3234) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3233  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3233 == 707406378 then goto _Label_3232		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3232
!	jmp	_Label_3231
_Label_3231:
! THEN...
	mov	3228,r13		! source line 3228
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3235 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3235  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3228,r13		! source line 3228
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0SE",r10
!   _temp_3236 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3232:
! FOR STATEMENT...
	mov	3234,r13		! source line 3234
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3241 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3242 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3241  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3237:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3242 then goto _Label_3240		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3240
_Label_3238:
	mov	3234,r13		! source line 3234
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0AS",r10
	mov	3235,r13		! source line 3235
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3238,r13		! source line 3238
	mov	"\0\0IF",r10
	mov	3238,r13		! source line 3238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3246) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3245  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3245 then goto _Label_3244 else goto _Label_3243
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3243
	jmp	_Label_3244
_Label_3243:
! THEN...
	mov	3239,r13		! source line 3239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3247 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3247  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3239,r13		! source line 3239
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_3248 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3244:
! ASSIGNMENT STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3239:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3237
! END FOR
_Label_3240:
! IF STATEMENT...
	mov	3247,r13		! source line 3247
	mov	"\0\0IF",r10
	mov	3247,r13		! source line 3247
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3252) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3251  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3251 == 707406378 then goto _Label_3250		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3250
!	jmp	_Label_3249
_Label_3249:
! THEN...
	mov	3248,r13		! source line 3248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3253 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3253  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3248,r13		! source line 3248
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3249,r13		! source line 3249
	mov	"\0\0SE",r10
!   _temp_3254 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3250,r13		! source line 3250
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3250:
! ASSIGNMENT STATEMENT...
	mov	3254,r13		! source line 3254
	mov	"\0\0AS",r10
	mov	3254,r13		! source line 3254
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3258,r13		! source line 3258
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3261,r13		! source line 3261
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3255
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3257
	.word	12
	.word	4
	.word	_Label_3258
	.word	-16
	.word	4
	.word	_Label_3259
	.word	-20
	.word	4
	.word	_Label_3260
	.word	-24
	.word	4
	.word	_Label_3261
	.word	-28
	.word	4
	.word	_Label_3262
	.word	-32
	.word	4
	.word	_Label_3263
	.word	-36
	.word	4
	.word	_Label_3264
	.word	-40
	.word	4
	.word	_Label_3265
	.word	-9
	.word	1
	.word	_Label_3266
	.word	-44
	.word	4
	.word	_Label_3267
	.word	-48
	.word	4
	.word	_Label_3268
	.word	-52
	.word	4
	.word	_Label_3269
	.word	-56
	.word	4
	.word	_Label_3270
	.word	-60
	.word	4
	.word	_Label_3271
	.word	-64
	.word	4
	.word	_Label_3272
	.word	-68
	.word	4
	.word	_Label_3273
	.word	-72
	.word	4
	.word	_Label_3274
	.word	-76
	.word	4
	.word	_Label_3275
	.word	-10
	.word	1
	.word	_Label_3276
	.word	-80
	.word	4
	.word	_Label_3277
	.word	-84
	.word	4
	.word	_Label_3278
	.word	-88
	.word	4
	.word	_Label_3279
	.word	-92
	.word	4
	.word	_Label_3280
	.word	-96
	.word	4
	.word	_Label_3281
	.word	-100
	.word	4
	.word	_Label_3282
	.word	-104
	.word	4
	.word	_Label_3283
	.word	-108
	.word	4
	.word	_Label_3284
	.word	-112
	.word	4
	.word	_Label_3285
	.word	-116
	.word	4
	.word	_Label_3286
	.word	-120
	.word	4
	.word	_Label_3287
	.word	-124
	.word	4
	.word	_Label_3288
	.word	-128
	.word	4
	.word	_Label_3289
	.word	-132
	.word	4
	.word	_Label_3290
	.word	-136
	.word	4
	.word	_Label_3291
	.word	-140
	.word	4
	.word	_Label_3292
	.word	-144
	.word	4
	.word	_Label_3293
	.word	-148
	.word	4
	.word	_Label_3294
	.word	-152
	.word	4
	.word	_Label_3295
	.word	-156
	.word	4
	.word	_Label_3296
	.word	-160
	.word	4
	.word	_Label_3297
	.word	-164
	.word	4
	.word	_Label_3298
	.word	-168
	.word	4
	.word	_Label_3299
	.word	-172
	.word	4
	.word	_Label_3300
	.word	-176
	.word	4
	.word	_Label_3301
	.word	-180
	.word	4
	.word	_Label_3302
	.word	-184
	.word	4
	.word	_Label_3303
	.word	-188
	.word	4
	.word	_Label_3304
	.word	-192
	.word	4
	.word	_Label_3305
	.word	-196
	.word	4
	.word	_Label_3306
	.word	-200
	.word	4
	.word	_Label_3307
	.word	-204
	.word	4
	.word	_Label_3308
	.word	-208
	.word	4
	.word	_Label_3309
	.word	-212
	.word	4
	.word	_Label_3310
	.word	-216
	.word	4
	.word	_Label_3311
	.word	-220
	.word	4
	.word	_Label_3312
	.word	-224
	.word	4
	.word	_Label_3313
	.word	-228
	.word	4
	.word	_Label_3314
	.word	-232
	.word	4
	.word	_Label_3315
	.word	-236
	.word	4
	.word	_Label_3316
	.word	-240
	.word	4
	.word	_Label_3317
	.word	-244
	.word	4
	.word	_Label_3318
	.word	-248
	.word	4
	.word	_Label_3319
	.word	-252
	.word	4
	.word	_Label_3320
	.word	-256
	.word	4
	.word	_Label_3321
	.word	-260
	.word	4
	.word	_Label_3322
	.word	-264
	.word	4
	.word	_Label_3323
	.word	-268
	.word	4
	.word	0
_Label_3255:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3256:
	.ascii	"Pself\0"
	.align
_Label_3257:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3265:
	.byte	'C'
	.ascii	"_temp_3245\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3275:
	.byte	'C'
	.ascii	"_temp_3227\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3312:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3314:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3315:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3316:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3317:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3318:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3319:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3320:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3321:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3322:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3323:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
