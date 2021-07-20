
<map>
  <node ID="root" TEXT="计算机操作系统">
    <node TEXT="操作系统概述" ID="1c01735a72f43c166" STYLE="bubble" POSITION="right">
      <node TEXT="操作系统的概念" ID="3dc1735a72f43c0111" STYLE="fork">
        <node TEXT="概念" ID="3a71735a72f43c0eb2" STYLE="fork">
          <node TEXT="负责管理协调硬件、软件等计算机资源" ID="1721735a72f43c0633" STYLE="fork"/>
          <node TEXT="为上层用户、应用程序提供简单易用的服务" ID="5d1735a72f43c0714" STYLE="fork"/>
          <node TEXT="是一种系统软件" ID="701735a72f43c0c95" STYLE="fork"/>
        </node>
        <node TEXT="功能和目标" ID="15a1735a72f43c10c6" STYLE="fork">
          <node TEXT="资源管理" ID="2fd1735a72f43c0bf7" STYLE="fork">
            <node TEXT="处理机(CPU)管理" ID="1fd1735a72f43c12a8" STYLE="fork"/>
            <node TEXT="储存器(内存)管理" ID="1011735a72f43d123" STYLE="fork"/>
            <node TEXT="文件管理" ID="a31735a72f43d18b1" STYLE="fork"/>
            <node TEXT="设备管理" ID="24d1735a72f43d0d42" STYLE="fork"/>
          </node>
          <node TEXT="向用户提供服务" ID="3191735a72f43d1083" STYLE="fork">
            <node TEXT="" ID="19c1735a9de6e218b" STYLE="fork"/>
            <node TEXT="命令接口" ID="2531735a72f43d1354" STYLE="fork">
              <node TEXT="联机命令接口(交互式cmd/shell)" ID="1061735a72f43d16e5" STYLE="fork"/>
              <node TEXT="脱机命令接口(.bat/.sh批处理)" ID="21f1735a72f43d01c6" STYLE="fork"/>
            </node>
            <node TEXT="程序接口" ID="3bb1735a72f43d0b67" STYLE="fork">
              <node TEXT="广义接口/系统调用(.dll/.so链接库)" ID="771735a72f43d02b8" STYLE="fork"/>
            </node>
            <node TEXT="GUI" ID="2041735a72f43e00d" STYLE="fork"/>
          </node>
          <node TEXT="对硬件机器的扩展" ID="26c1735a72f43f076" STYLE="fork">
            <node TEXT="覆盖了软件的机器:扩充机器(虚拟机)" ID="28b1735a72f43f0cb1" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="操作系统的特征" ID="3391735a72f43f0cc2" STYLE="fork">
        <node TEXT="并发" ID="2ac1735a72f43f01f3" STYLE="fork"/>
        <node TEXT="共享" ID="3c01735a72f440039" STYLE="fork">
          <node TEXT="互斥共享" ID="3531735a72f4400631" STYLE="fork"/>
          <node TEXT="同时共享" ID="2791735a72f4400742" STYLE="fork"/>
        </node>
        <node TEXT="虚拟" ID="1471735a72f4400f53" STYLE="fork">
          <node TEXT="空分复用(虚拟储存技术)" ID="3211735a72f4401644" STYLE="fork"/>
          <node TEXT="时分复用(虚拟处理器技术)" ID="ff1735a72f44008a5" STYLE="fork"/>
        </node>
        <node TEXT="异步" ID="18f1735a72f4401916" STYLE="fork"/>
      </node>
      <node TEXT="操作系统的发展和分类" ID="3281735a72f441085" STYLE="fork">
        <node TEXT="手工操作阶段(IO靠纸带打孔，资源利用率低)" ID="28a1735a72f44105f1" STYLE="fork"/>
        <node TEXT="批处理阶段" ID="3071735a72f44116b2" STYLE="fork">
          <node TEXT="单道批处理系统" ID="13e1735a72f44107e3" STYLE="fork"/>
          <node TEXT="多道批处理系统" ID="2821735a72f4411094" STYLE="fork"/>
        </node>
        <node TEXT="分时操作系统" ID="851735a72f44114f5" STYLE="fork"/>
        <node TEXT="实时操作系统" ID="2d81735a72f44214b" STYLE="fork">
          <node TEXT="硬实时系统" ID="d41735a72f4420311" STYLE="fork"/>
          <node TEXT="软实时系统" ID="3e01735a72f44217b2" STYLE="fork"/>
        </node>
        <node TEXT="网络操作系统" ID="2171735a72f44302c" STYLE="fork"/>
        <node TEXT="分布式操作系统" ID="1f51735a72f4430111" STYLE="fork"/>
        <node TEXT="PC操作系统" ID="3941735a72f4430bd2" STYLE="fork">
          <node TEXT="Windows10" ID="2c31735a72f4430fe3" STYLE="fork"/>
          <node TEXT="MacOS" ID="26c1735a72f4431064" STYLE="fork"/>
          <node TEXT="Ubuntu" ID="2db1735a72f44318c5" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="操作系统运行机制/系统结构" ID="17b1735a72f44302d6" STYLE="fork">
        <node TEXT="运行机制" ID="1701735a72f4431137" STYLE="fork">
          <node TEXT="指令" ID="3d71735a72f4430088" STYLE="fork">
            <node TEXT="特权指令" ID="2931735a72f443079" STYLE="fork"/>
            <node TEXT="非特权指令" ID="f21735a72f44308411" STYLE="fork"/>
          </node>
          <node TEXT="处理器状态" ID="31e1735a72f44312813" STYLE="fork">
            <node TEXT="核心态(目管态)" ID="3891735a72f44415d" STYLE="fork">
              <node TEXT="PSW=0，运行执行特权指令" ID="d01735a72f445172" STYLE="fork"/>
            </node>
            <node TEXT="用户态(目态)" ID="3791735a72f4450e71" STYLE="fork">
              <node TEXT="PSW=1，只能使用非特权指令" ID="1151735a72f44509d2" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="程序" ID="351735a72f44508b3" STYLE="fork">
            <node TEXT="应用程序" ID="2e51735a72f4451694" STYLE="fork"/>
            <node TEXT="内核程序" ID="3161735a72f4450c46" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="OS内核" ID="2241735a72f446159" STYLE="fork">
          <node TEXT="" ID="32b1735a7c505601b" STYLE="fork"/>
          <node TEXT="时钟管理" ID="1f91735a72f44617b1" STYLE="fork"/>
          <node TEXT="中断处理" ID="37c1735a72f4460882" STYLE="fork"/>
          <node TEXT="原语" ID="3381735a72f44601a3" STYLE="fork"/>
          <node TEXT="系统资源管理" ID="3d21735a72f4460254" STYLE="fork">
            <node TEXT="进程管理" ID="361735a72f4461085" STYLE="fork"/>
            <node TEXT="储存器管理" ID="2ab1735a72f4460026" STYLE="fork"/>
            <node TEXT="设备管理" ID="2d91735a72f447111" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="OS体系结构" ID="1461735a72f4471561" STYLE="fork">
          <node TEXT="" ID="2e01735a7c7daf12d" STYLE="fork"/>
          <node TEXT="大内核" ID="1341735a72f44709b2" STYLE="fork"/>
          <node TEXT="微内核" ID="6e1735a72f4471773" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="中断和异常" ID="2851735a85327f0ff" STYLE="fork">
        <node TEXT="中断机制的诞生" ID="3821735a858ef10e8" STYLE="fork"/>
        <node TEXT="中断的概念和作用" ID="391735a85c1a0038" STYLE="fork"/>
        <node TEXT="中断的分类1" ID="1501735a85f72f05" STYLE="fork">
          <node TEXT="内中断(异常/例外/陷入)" ID="33b1735a86292d18" STYLE="fork">
            <node TEXT="自愿中断(指令中断)" ID="ea1735a8ea5150ae" STYLE="fork"/>
            <node TEXT="强迫中断" ID="20d1735a8eff6f03b" STYLE="fork">
              <node TEXT="硬件故障" ID="3281735a8f1f770f4" STYLE="fork"/>
              <node TEXT="软件中断" ID="3d71735a8f307f14e" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="外中断(狭义中断)" ID="a51735a8658c00b6" STYLE="fork">
            <node TEXT="外设请求" ID="2ca1735a8f4b8d03b" STYLE="fork"/>
            <node TEXT="人工干预" ID="1e1735a8f63d215f" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="中断的分类2" ID="1e31735a93457211a" STYLE="fork">
          <node TEXT="内中断(内部异常)" ID="1171735a936bff022" STYLE="fork">
            <node TEXT="陷阱、陷入(trap)" ID="91735a93e2ff179" STYLE="fork"/>
            <node TEXT="故障(fault)" ID="961735a9429e7173" STYLE="fork"/>
            <node TEXT="终止(abort)" ID="2d81735a944f4707e" STYLE="fork"/>
          </node>
          <node TEXT="外中断" ID="31e1735a939460041" STYLE="fork">
            <node TEXT="I/O中断请求" ID="1011735a93afbb155" STYLE="fork"/>
            <node TEXT="人工干预" ID="34a1735a93cdf80a6" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="外中断的处理过程" ID="18e1735a8606850bb" STYLE="fork"/>
      </node>
      <node TEXT="系统调用" ID="3c11735a857c460bd" STYLE="fork">
        <node TEXT="系统调用的作用" ID="1d41735a9b9e5f0f2" STYLE="fork">
          <node TEXT="操作系统给应用程序提供的接口" ID="2741735ab27e3b0ad" STYLE="fork"/>
          <node TEXT="应用程序通过系统调用请求获得操作系统的服务" ID="3b01735ab2a9440df" STYLE="fork"/>
          <node TEXT="系统调用使处理器进入核心态" ID="23e1735ab2fbb604b" STYLE="fork"/>
        </node>
        <node TEXT="系统调用和库函数的区别" ID="3c61735a9bf110162" STYLE="fork">
          <node TEXT="" ID="7e1735aae732c046" STYLE="fork">
            <node TEXT="系统调用是操作系统向上提供的接口" ID="1c41735aae9ef1063" STYLE="fork"/>
            <node TEXT="有的库函数是对于系统调用的进一步封装" ID="371735aaefcab036" STYLE="fork"/>
            <node TEXT="大多数高级语言提供的库函数间接进行系统调用" ID="651735aaf44f2077" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="系统调用的过程" ID="2b91735a9c21ee0b5" STYLE="fork">
          <node TEXT=" " ID="1061735ab04245082" STYLE="fork">
            <node TEXT="1.传递系统调用参数" ID="1201735ab064a4147" STYLE="fork"/>
            <node TEXT="2.执行陷入指令(用户态)" ID="2531735ab0a19014" STYLE="fork"/>
            <node TEXT="3.执行系统调用相应服务程序(核心态)" ID="1421735ab0b875174" STYLE="fork"/>
            <node TEXT="4.返回用户程序" ID="1341735ab0efb6127" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="操作系统运行模型" ID="0c40d07159263b5b918e83593df9f389" STYLE="fork">
        <node TEXT="非进程运行模型" ID="56af25134cfcc13a247fbef69f8769bf" STYLE="fork"/>
        <node TEXT="嵌入用户进程的运行模型" ID="c6dff0c7f3f81e997a674716a8d3e1d3" STYLE="fork"/>
        <node TEXT="作为独立进程的运行模型" ID="5041d9aed115610ea2918a3023ac5b2e" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="进程管理" ID="3771735ab5d7e80af" STYLE="bubble" POSITION="right">
      <node TEXT="进程的定义" ID="2d61735ab60d91154" STYLE="fork">
        <node TEXT="定义" ID="1201735ab64da00df" STYLE="fork">
          <node TEXT="发展过程" ID="9e1735ac0f32a111" STYLE="fork"/>
        </node>
        <node TEXT="组成" ID="3f1735ab662840d" STYLE="fork">
          <node TEXT="程序段" ID="d21735ac29a100f1" STYLE="fork"/>
          <node TEXT="数据段" ID="2f61735ac2a75a04a" STYLE="fork"/>
          <node TEXT="PCB" ID="1b11735ac2b36116b" STYLE="fork">
            <node TEXT="进程描述信息" ID="3c41735acb4fc1076" STYLE="fork">
              <node TEXT="进程标识符 PID" ID="2211735acd004a077" STYLE="fork"/>
              <node TEXT="用户标识符 UID" ID="1c41735acd18bf09a" STYLE="fork"/>
              <node TEXT="父进程 PID" ID="863fd159c35af96598662c802eed8f2b" STYLE="fork"/>
              <node TEXT="子进程 PID" ID="a998061ae84a3d9c54d05a6494ee1b1e" STYLE="fork"/>
            </node>
            <node TEXT="进程控制和管理信息" ID="32e1735acca5bd153" STYLE="fork">
              <node TEXT="进程优先级" ID="1cc1735acd41d4195" STYLE="fork"/>
              <node TEXT="进程当前状态" ID="27d1735acd5b34021" STYLE="fork"/>
              <node TEXT="进程阻塞原因" ID="15a0c89ce452d9e8dd3b7d6a53e9c669" STYLE="fork"/>
              <node TEXT="进程同步和通信机制" ID="1c739073833f0a0521d05004f4a7a06c" STYLE="fork"/>
              <node TEXT="其它调度所需的信息" ID="a1ec3a78c5e639d82b6ed8c1f38ae5ef" STYLE="fork"/>
            </node>
            <node TEXT="资源分配清单" ID="1ad1735acccf3a101" STYLE="fork">
              <node TEXT="程序段指针" ID="2901735acd77bc022" STYLE="fork"/>
              <node TEXT="数据段指针" ID="1ec1735acd88d7016" STYLE="fork"/>
              <node TEXT="外设资源" ID="9c1735acd97cd0ec" STYLE="fork"/>
            </node>
            <node TEXT="处理器现场信息" ID="2f01735acce7e604a" STYLE="fork">
              <node TEXT="各种寄存器的值" ID="28e1735acdd8be106" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="组织方式" ID="4d1735ab66a03141" STYLE="fork">
          <node TEXT="链接方式" ID="6f1735acfc47e04b" STYLE="fork">
            <node TEXT="按照进程状态将PCB分为多个队列" ID="2c1735ad0425d017" STYLE="fork"/>
            <node TEXT="操作系统持有指向个个队列的指针" ID="da1735ad07df909e" STYLE="fork"/>
            <node TEXT="" ID="1761735ad264f706f" STYLE="fork"/>
          </node>
          <node TEXT="索引方式" ID="111735acff338049" STYLE="fork">
            <node TEXT="根据进程状态不同，建立几张索引表" ID="22b1735ad0cb7b143" STYLE="fork"/>
            <node TEXT="操作系统持有指向各索引表的指针" ID="2df1735ad10bad17e" STYLE="fork"/>
            <node TEXT="" ID="33d1735ad2c6900fa" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="特征" ID="831735ab6749d0bd" STYLE="fork">
          <node TEXT="动态性" ID="171735ad33cf80c3" STYLE="fork"/>
          <node TEXT="并发性" ID="3831735ad408d40f5" STYLE="fork"/>
          <node TEXT="独立性" ID="2821735ad4a42a0be" STYLE="fork"/>
          <node TEXT="异步性" ID="3bb1735ad52a9c031" STYLE="fork"/>
          <node TEXT="结构性" ID="3bd1735ad5483c0f9" STYLE="fork"/>
        </node>
        <node TEXT="程序顺序执行特性" ID="e6dce4844273e326383ca45e01688e0d" STYLE="fork">
          <node TEXT="顺序性" ID="a756963705f3787a69d378bfcdeb368a" STYLE="fork"/>
          <node TEXT="封闭性" ID="81f4c74948656def777e33048b3f380f" STYLE="fork"/>
          <node TEXT="可再现性" ID="76f8afe3beceb57b0fd79fef97429776" STYLE="fork"/>
        </node>
        <node TEXT="程序并发执行特性" ID="ea47f039bde896abe4bd374e5fee694a" STYLE="fork">
          <node TEXT="间断性" ID="face27c202176b735c7eb65acf3c72ba" STYLE="fork"/>
          <node TEXT="失去封闭性" ID="2c416b97c81c3eeba3a6e414a1b1e6db" STYLE="fork"/>
          <node TEXT="不可再现性" ID="123387add55d3fe4f1d4bdcd4038e53e" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="进程的状态与转换" ID="1b11735ad960af034" STYLE="fork">
        <node TEXT="进程的状态" ID="2cf1735ad99d2b0d1" STYLE="fork">
          <node TEXT="运行状态(Running)" ID="22e1735ad9ed51021" STYLE="fork"/>
          <node TEXT="就绪状态(Ready)" ID="2381735ada140616a" STYLE="fork"/>
          <node TEXT="阻塞状态(Waiting/Blocked)" ID="3751735ada1ffc063" STYLE="fork"/>
          <node TEXT="创建状态(New)" ID="19b1735ada2ade188" STYLE="fork"/>
          <node TEXT="终止状态(Terminated)" ID="3471735ada495b17b" STYLE="fork"/>
        </node>
        <node TEXT="进程间的转换" ID="571735ad9c51a0d" STYLE="fork">
          <node TEXT="" ID="241735ae99bb0095" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="进程控制" ID="3b61735aed1ca6024" STYLE="fork">
        <node TEXT="基本概念" ID="3991735aed269912f" STYLE="fork">
          <node TEXT="什么是进程控制" ID="3401735aed4eaa129" STYLE="fork"/>
          <node TEXT="如何实现" ID="2eb1735aed5e9c066" STYLE="fork">
            <node TEXT="" ID="3c31735b59c11a14d" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="控制相关原语" ID="db1735aedb424185" STYLE="fork">
          <node TEXT="进程创建" ID="191735b5ce304006" STYLE="fork">
            <node TEXT="创建原语" ID="1f91735aedeba107b" STYLE="fork"/>
            <node TEXT="引发事件" ID="b91735b5cfbd817b" STYLE="fork"/>
          </node>
          <node TEXT="进程终止" ID="2181735b5d2ebd172" STYLE="fork">
            <node TEXT="撤销原语" ID="3ac1735aee0753001" STYLE="fork"/>
            <node TEXT="引发事件" ID="3561735b5d3b33163" STYLE="fork"/>
          </node>
          <node TEXT="进程阻塞" ID="2041735aee12b0194" STYLE="fork">
            <node TEXT="阻塞原语" ID="2601735b5f6775082" STYLE="fork"/>
            <node TEXT="引发事件" ID="2111735b60b613108" STYLE="fork"/>
          </node>
          <node TEXT="进程唤醒" ID="1f81735aee1bec04" STYLE="fork">
            <node TEXT="唤醒原语" ID="3141735b61573501d" STYLE="fork"/>
            <node TEXT="引发原因" ID="2411735b61697918" STYLE="fork"/>
          </node>
          <node TEXT="进程切换" ID="9c1735aee392714e" STYLE="fork">
            <node TEXT="切换原语" ID="3061735b6375d4136" STYLE="fork"/>
            <node TEXT="引发原因" ID="34d1735b638589098" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="进程通信" ID="1061735b67dcac068" STYLE="fork">
        <node TEXT="共享储存" ID="6e1735b680975028" STYLE="fork">
          <node TEXT="" ID="2941735b6e01a118e" STYLE="fork"/>
        </node>
        <node TEXT="管道通信" ID="25f1735b6829fe031" STYLE="fork">
          <node TEXT="" ID="3331735b722e0b08" STYLE="fork"/>
        </node>
        <node TEXT="消息传递" ID="811735b72d66a0cf" STYLE="fork">
          <node TEXT="" ID="24b1735b76c3a9108" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="线程、多线程模型" ID="2391735b780d66021" STYLE="fork">
        <node TEXT="引入线程后的变化" ID="1d01735b78f18c07f" STYLE="fork">
          <node TEXT="资源分配、调度" ID="c1735b7f1070016" STYLE="fork"/>
          <node TEXT="并发性" ID="2c91735b810eca009" STYLE="fork"/>
          <node TEXT="系统开销" ID="38d1735b817dfe0a6" STYLE="fork"/>
        </node>
        <node TEXT="线程的属性" ID="3081735b790ce8143" STYLE="fork"/>
        <node TEXT="线程的实现方式" ID="1e41735b7926be14f" STYLE="fork">
          <node TEXT="用户级线程" ID="7b1735b794ea802" STYLE="fork"/>
          <node TEXT="内核级线程" ID="2c81735b7967620df" STYLE="fork"/>
          <node TEXT="组合方式" ID="2c1735b96a8dc191" STYLE="fork"/>
        </node>
        <node TEXT="多线程模型" ID="1c1735b79971f10f" STYLE="fork">
          <node TEXT="多对一模型" ID="7a1735b79a6b3008" STYLE="fork"/>
          <node TEXT="一对一模型" ID="2531735b79cd090c1" STYLE="fork"/>
          <node TEXT="多对多模型" ID="971735b79dea9014" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="处理机调度" ID="23a1735ba03094172" STYLE="fork">
        <node TEXT="基本概念" ID="2f51735ba052aa185" STYLE="fork"/>
        <node TEXT="调度层次" ID="1de1735ba06158136" STYLE="fork">
          <node TEXT="高级调度（作业调度）" ID="7a1735ba131030a6" STYLE="fork"/>
          <node TEXT="中级调度（内存调度）" ID="1b51735ba17c280f8" STYLE="fork"/>
          <node TEXT="低级调度（进程调度）" ID="3821735ba1a75906e" STYLE="fork"/>
          <node TEXT="对比" ID="d81735bbeee040b2" STYLE="fork"/>
        </node>
        <node TEXT="补充-七状态模型" ID="7d1735ba09b66007" STYLE="fork"/>
      </node>
      <node TEXT="调度的时机和方式" ID="34d1735bc2f41903" STYLE="fork">
        <node TEXT="时机" ID="24e1735bc3533004b" STYLE="fork">
          <node TEXT="什么时候需要进程调度" ID="16a1735bc39a430ae" STYLE="fork">
            <node TEXT="进程自动放弃处理机" ID="30e1735c4dc90515" STYLE="fork"/>
            <node TEXT="进程被动放弃处理机" ID="3b71735c4de3f211b" STYLE="fork"/>
          </node>
          <node TEXT="什么时候不能进行进程调度" ID="33a1735c4c158806d" STYLE="fork"/>
        </node>
        <node TEXT="切换过程" ID="3191735bc368e1034" STYLE="fork">
          <node TEXT="狭义的调度与切换的区别" ID="23a1735c4b94e60cc" STYLE="fork"/>
          <node TEXT="进程切换的过程" ID="2f11735c4bcfdf052" STYLE="fork"/>
        </node>
        <node TEXT="方式" ID="2f51735bc376fe11b" STYLE="fork">
          <node TEXT="非剥夺(抢占)式" ID="2af1735c4b079f003" STYLE="fork"/>
          <node TEXT="剥夺(抢占)式" ID="3151735c4b58690dc" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="调度算法的评价指标" ID="3ca1735bd8470f0c4" STYLE="fork">
        <node TEXT="CPU利用率：CPU忙碌时间(+IO时间)/总时间" ID="2321735bd91ec801" STYLE="fork"/>
        <node TEXT="系统吞吐量：总共完成的作业数/总时间" ID="1ba1735bd932a1195" STYLE="fork"/>
        <node TEXT="周转时间" ID="1a1735bd940340ef" STYLE="fork">
          <node TEXT="平均周转时间：各作业周转时间之和/作业数" ID="2ce1735bd979ae0cb" STYLE="fork"/>
          <node TEXT="平均带权周转时间：" ID="371735bd9c74e006" STYLE="fork"/>
        </node>
        <node TEXT="等待时间" ID="3ab1735bd94ba515b" STYLE="fork"/>
        <node TEXT="响应时间" ID="2281735bd961f50f8" STYLE="fork"/>
      </node>
      <node TEXT="调度算法(早期系统)" ID="3d91735beb9eea13c" STYLE="fork">
        <node TEXT="先来先服务(FCFS)" ID="2bc1735bebc146088" STYLE="fork">
          <node TEXT="" ID="35117398b617ac195" STYLE="fork"/>
        </node>
        <node TEXT="短作业优先(SJF)" ID="39e1735bec075415e" STYLE="fork">
          <node TEXT="非抢占式" ID="1841735c7ed66d048" STYLE="fork"/>
          <node TEXT="抢占式" ID="2501735c7f2ec0019" STYLE="fork"/>
        </node>
        <node TEXT="高响应比优先(HRRN)" ID="2cc1735bec3d8e0e" STYLE="fork">
          <node TEXT="" ID="19117398b6424e124" STYLE="fork"/>
        </node>
        <node TEXT="对比" ID="321735c9f815e127" STYLE="fork">
          <node TEXT="" ID="12f17398b674b8063" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="调度算法(交互式系统)" ID="2c01735ca314a114b" STYLE="fork">
        <node TEXT="时间片轮转(RR)" ID="38d1735ca324bb09" STYLE="fork">
          <node TEXT="" ID="34d1739859617b0f8" STYLE="fork"/>
        </node>
        <node TEXT="优先级调度" ID="263173659772f1147" STYLE="fork">
          <node TEXT="" ID="5817398a2834413d" STYLE="fork"/>
        </node>
        <node TEXT="多级反馈队列" ID="2cc17365978139162" STYLE="fork">
          <node TEXT="" ID="21117398b6aa8505" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="进程同步和互斥" ID="3c6173609173bb0ce" STYLE="fork">
        <node TEXT="进程同步" ID="f117360919d8b143" STYLE="fork"/>
        <node TEXT="进程互斥" ID="2871736095e7ce122" STYLE="fork">
          <node TEXT="四个部分" ID="1d6173609c30a40c2" STYLE="fork">
            <node TEXT="进入区" ID="3be173609f3c3b0cb" STYLE="fork"/>
            <node TEXT="临界区" ID="373173609ee407156" STYLE="fork"/>
            <node TEXT="退出区" ID="c6173609f770f084" STYLE="fork"/>
            <node TEXT="剩余区" ID="1a5173609f8ee9034" STYLE="fork"/>
          </node>
          <node TEXT="需要遵守的原则" ID="13917360a17188015" STYLE="fork">
            <node TEXT="空闲让进" ID="23317360a19347152" STYLE="fork"/>
            <node TEXT="忙则等待" ID="3317360a1b2270aa" STYLE="fork"/>
            <node TEXT="有限等待" ID="18b17360a1c60d187" STYLE="fork"/>
            <node TEXT="让权等待" ID="19f17360a1db090b9" STYLE="fork"/>
          </node>
          <node TEXT="软件实现法" ID="23417360a713100af" STYLE="fork">
            <node TEXT="单标志法" ID="2d217360a73381158" STYLE="fork"/>
            <node TEXT="双标志先检查" ID="30017360a77cd7065" STYLE="fork"/>
            <node TEXT="双标志后检查" ID="2617360a79cbe145" STYLE="fork"/>
            <node TEXT="Peterson 算法" ID="2a17360a7b55e183" STYLE="fork"/>
          </node>
          <node TEXT="硬件实现法" ID="22517360e3cd26175" STYLE="fork">
            <node TEXT="中断屏蔽法" ID="2f117360e440a30c4" STYLE="fork"/>
            <node TEXT="TestAndSet指令" ID="b017360e45caa057" STYLE="fork"/>
            <node TEXT="Swap指令" ID="3d917360ebc9410d1" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="信号量机制" ID="34117360ef4fba0db" STYLE="fork">
        <node TEXT="整形信号量" ID="14c17360ef65020ef" STYLE="fork"/>
        <node TEXT="记录型信号量" ID="14a17360ef853707" STYLE="fork"/>
        <node TEXT="信号量机制实现进程互斥" ID="801736113c1230af" STYLE="fork"/>
        <node TEXT="信号量机制实现进程同步" ID="2731736119dd0b197" STYLE="fork"/>
        <node TEXT="信号量机制实现前驱关系" ID="314173611e23c803" STYLE="fork"/>
      </node>
      <node TEXT="生产者消费者问题" ID="f71736123dd8e10b" STYLE="fork">
        <node TEXT="问题分析" ID="2e31736123ef0504d" STYLE="fork"/>
        <node TEXT="如何实现" ID="1b3173613320a30c7" STYLE="fork"/>
      </node>
      <node TEXT="多生产者消费者问题" ID="27b173613be20c01f" STYLE="fork">
        <node TEXT="问题分析" ID="274173614b491e19" STYLE="fork"/>
        <node TEXT="如何实现" ID="2aa173614b6db4018" STYLE="fork"/>
        <node TEXT="解题方法" ID="31e173614edef413a" STYLE="fork"/>
      </node>
      <node TEXT="吸烟者问题" ID="2ee173614f35550ee" STYLE="fork">
        <node TEXT="问题分析" ID="1e0173615b91f7071" STYLE="fork"/>
        <node TEXT="如何实现" ID="287173615c7ec202" STYLE="fork"/>
      </node>
      <node TEXT="读写者问题" ID="20c17361d5ba4c034" STYLE="fork">
        <node TEXT="问题分析" ID="3617361d5d14d088" STYLE="fork"/>
        <node TEXT="如何实现" ID="3811736566edd3188" STYLE="fork"/>
      </node>
      <node TEXT="哲学家就餐问题" ID="154173657ab1390b9" STYLE="fork">
        <node TEXT="问题分析" ID="3d3173657ac3a5144" STYLE="fork"/>
        <node TEXT="如何解决" ID="2dc173657ad8b4098" STYLE="fork"/>
      </node>
      <node TEXT="管程" ID="1301736580e37f164" STYLE="fork">
        <node TEXT="为什么引入管程" ID="21a173658105bf076" STYLE="fork"/>
        <node TEXT="管程的定义" ID="13817365812d3e028" STYLE="fork"/>
        <node TEXT="管程的基本特征" ID="1da1737458731e0ba" STYLE="fork"/>
        <node TEXT="用管程解决生产者消费者问题" ID="38173746af89514f" STYLE="fork"/>
        <node TEXT="Java" ID="104173746996dc02" STYLE="fork"/>
      </node>
      <node TEXT="死锁" ID="3bd173746d02db117" STYLE="fork">
        <node TEXT="什么是死锁" ID="1c4173746d0a69057" STYLE="fork"/>
        <node TEXT="死锁、饥饿、死循环" ID="3b1173747452e00d" STYLE="fork"/>
        <node TEXT="死锁产生的条件" ID="17a1737477514511e" STYLE="fork">
          <node TEXT="互斥条件" ID="2c317374777a5012e" STYLE="fork"/>
          <node TEXT="不剥夺条件" ID="19617374778c1502a" STYLE="fork"/>
          <node TEXT="请求和保持条件" ID="3641737478d16b039" STYLE="fork"/>
          <node TEXT="循环等待条件" ID="2f173747ab6c1096" STYLE="fork"/>
        </node>
        <node TEXT="死锁的处理策略" ID="1ac17374816d2e06d" STYLE="fork">
          <node TEXT="预防死锁" ID="7217374819c9114b" STYLE="fork"/>
          <node TEXT="避免死锁" ID="1ad1737481ad43147" STYLE="fork"/>
          <node TEXT="检测和解除" ID="2531737481c2b816f" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="死锁的处理" ID="2f3173748449e9144" STYLE="fork">
        <node TEXT="不允许死锁发生" ID="1ed173748470fc18" STYLE="fork">
          <node TEXT="静态策略：预防死锁" ID="16e1737485071b0e2" STYLE="fork">
            <node TEXT="破坏互斥条件" ID="1173748814c1189" STYLE="fork"/>
            <node TEXT="破坏不剥夺条件" ID="2e81737488f0b3157" STYLE="fork"/>
            <node TEXT="破坏请求和保持条件" ID="123173748ce8f1179" STYLE="fork"/>
            <node TEXT="破坏循环等待条件" ID="19f173748f7235139" STYLE="fork"/>
          </node>
          <node TEXT="动态策略：避免死锁" ID="7d1737485273d17a" STYLE="fork">
            <node TEXT="什么是安全序列" ID="152173749838dd0a2" STYLE="fork"/>
            <node TEXT="什么是系统的不安全状态" ID="291173749851fd0cd" STYLE="fork"/>
            <node TEXT="银行家算法" ID="17517374a01c160db" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="允许死锁发生" ID="28f1737484d3160c4" STYLE="fork">
          <node TEXT="死锁检测" ID="a1737485ae440a9" STYLE="fork"/>
          <node TEXT="死锁解除" ID="34217374d00e380ab" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="内存管理" ID="2ef1735cad0173097" STYLE="bubble" POSITION="right">
      <node TEXT="内存基础" ID="6e17361e0264611c" STYLE="fork">
        <node TEXT="什么是内存" ID="10a17361e054800ad" STYLE="fork">
          <node TEXT="储存单元" ID="e917361e06a23164" STYLE="fork"/>
          <node TEXT="内存地址" ID="24617361e086cc15a" STYLE="fork"/>
        </node>
        <node TEXT="进程运行的基本原理" ID="37717361e0e30e135" STYLE="fork">
          <node TEXT="指令的工作原理" ID="25c17361e1071c02a" STYLE="fork"/>
          <node TEXT="逻辑地址/物理地址" ID="6817361e1218403c" STYLE="fork"/>
        </node>
        <node TEXT="从写程序到程序运行" ID="fb1737527d84b07d" STYLE="fork">
          <node TEXT="编辑源文件" ID="4d1737528125d08c" STYLE="fork"/>
          <node TEXT="编译" ID="8317375282ec110f" STYLE="fork"/>
          <node TEXT="链接" ID="15c17375283a9202c" STYLE="fork"/>
          <node TEXT="装入(载)" ID="316173752844a208b" STYLE="fork"/>
          <node TEXT="" ID="1f31737544d74d09c" STYLE="fork"/>
        </node>
        <node TEXT="三种链接方式" ID="6517361e184db032" STYLE="fork">
          <node TEXT="静态链接" ID="1371737528f99d15f" STYLE="fork"/>
          <node TEXT="装入时动态链接" ID="2c717375290e6e14e" STYLE="fork"/>
          <node TEXT="运行时动态链接" ID="fe1737529321e16c" STYLE="fork"/>
        </node>
        <node TEXT="三种装入方式" ID="a717361e1a05314b" STYLE="fork">
          <node TEXT="绝对装入" ID="2a317375294fb70f7" STYLE="fork"/>
          <node TEXT="可重定位装入(静态重定位)" ID="16817375295f70195" STYLE="fork"/>
          <node TEXT="动态运行时装入(动态重定位)" ID="3817375299a450da" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="内存管理" ID="34317375519e2d035" STYLE="fork">
        <node TEXT="内存空间分配与回收" ID="1641737551ac62175" STYLE="fork">
          <node TEXT="连续分配管理方式" ID="2081737577d04c19" STYLE="fork">
            <node TEXT="单一连续分配" ID="23b1737578b40804d" STYLE="fork">
              <node TEXT="" ID="9d1737b71f6b2166" STYLE="fork"/>
            </node>
            <node TEXT="固定分区分配" ID="3a61737578c94e0c2" STYLE="fork">
              <node TEXT="" ID="33c1737b7211d8092" STYLE="fork"/>
            </node>
            <node TEXT="动态分区分配" ID="761737b72517d116" STYLE="fork">
              <node TEXT="" ID="3e71737578f34509e" STYLE="fork"/>
            </node>
            <node TEXT="动态分区分配算法" ID="39e17375c72e9507c" STYLE="fork">
              <node TEXT="首次适应(First Fit)" ID="28617375c73c840e4" STYLE="fork"/>
              <node TEXT="最佳适应(Best Fit)" ID="31817375c75aad12b" STYLE="fork"/>
              <node TEXT="最坏适应(Worst Fit)" ID="a017375c77b6305b" STYLE="fork"/>
              <node TEXT="邻近适应(Next Fit)" ID="2c317375c78d5f184" STYLE="fork"/>
              <node TEXT="对比" ID="10417375deecac11b" STYLE="fork">
                <node TEXT="" ID="b21737b7290aa02c" STYLE="fork"/>
              </node>
            </node>
          </node>
          <node TEXT="非连续分配管理方式" ID="ff1737577fc3305f" STYLE="fork">
            <node TEXT="基本分页存储管理 " ID="1aa17376129379184" STYLE="fork">
              <node TEXT="分页管理" ID="12f1737b7030d1071" STYLE="fork">
                <node TEXT="" ID="26717375e137e502c" STYLE="fork"/>
              </node>
              <node TEXT="基本地址变换机构" ID="2561737614e88d168" STYLE="fork">
                <node TEXT="页表寄存器(PTR)" ID="220173763422cf0dd" STYLE="fork"/>
                <node TEXT="地址转换过程" ID="1da1737b70dc38119" STYLE="fork">
                  <node TEXT="" ID="2c8173763616da0ae" STYLE="fork"/>
                </node>
                <node TEXT="对页表项目的探讨" ID="232173763a07d0034" STYLE="fork">
                  <node TEXT="" ID="2171737b71276d0ef" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="具有快表的地址变换机构" ID="3551737a7a830106b" STYLE="fork">
                <node TEXT="局部性原理" ID="2541737a7ac82f141" STYLE="fork"/>
                <node TEXT="什么是快表(TLB)" ID="1c1737a7ae16b055" STYLE="fork"/>
                <node TEXT="地址变换过程" ID="ad1737a7b0703131" STYLE="fork">
                  <node TEXT="" ID="1ee1737b70ae2f068" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="两级页表" ID="2511737b671b7a144" STYLE="fork">
                <node TEXT="单级页表的问题" ID="3e1737b67459d09" STYLE="fork"/>
                <node TEXT="两级页表原理" ID="1a01737b67c84206b" STYLE="fork">
                  <node TEXT="" ID="691737b6f7236071" STYLE="fork"/>
                </node>
                <node TEXT="如何实现地址变换" ID="31a1737b67eb30045" STYLE="fork">
                  <node TEXT="" ID="2251737b6fad1c085" STYLE="fork"/>
                </node>
                <node TEXT="注意事项" ID="11a1737b73bdbe03" STYLE="fork">
                  <node TEXT="" ID="cf1737b74b9b90e7" STYLE="fork"/>
                </node>
              </node>
            </node>
            <node TEXT="基本分段存储管理" ID="2a817375e1bc9218c" STYLE="fork">
              <node TEXT="什么是分段" ID="41737b78769c0a1" STYLE="fork">
                <node TEXT="" ID="22a1737b7ede9e08d" STYLE="fork"/>
              </node>
              <node TEXT="什么是段表" ID="1da1737b78946a081" STYLE="fork">
                <node TEXT="" ID="32d1737b85eba5017" STYLE="fork"/>
              </node>
              <node TEXT="如何实现地址变换" ID="28b1737b78a62a12a" STYLE="fork">
                <node TEXT="" ID="7d1737b861b12196" STYLE="fork"/>
              </node>
              <node TEXT="分段 vs 分页" ID="1151737b78c1d400c" STYLE="fork">
                <node TEXT="" ID="331737b8fc4970b8" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="段页式存储管理" ID="d17375e20c68104" STYLE="fork">
              <node TEXT="分段分页的优缺点" ID="30d1737b99efa5077" STYLE="fork">
                <node TEXT="" ID="1901737ee316360e9" STYLE="fork"/>
              </node>
              <node TEXT="段页式管理" ID="1961737b9a1cc40b" STYLE="fork">
                <node TEXT="" ID="2af1737ee3cc71121" STYLE="fork"/>
              </node>
              <node TEXT="段表、页表" ID="1f1737b9a46400a8" STYLE="fork">
                <node TEXT="" ID="2dc1737eebf8a0193" STYLE="fork"/>
              </node>
              <node TEXT="如何实现地址变换" ID="1671737b9a5a890ba" STYLE="fork">
                <node TEXT="" ID="1b71737ef4e58208f" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
        <node TEXT="内存空间的扩充" ID="c11737551c7ec011" STYLE="fork">
          <node TEXT="覆盖技术" ID="3b31737564ee1609b" STYLE="fork">
            <node TEXT="" ID="2931737f07c9bf0ae" STYLE="fork"/>
          </node>
          <node TEXT="交换(对换)技术" ID="15f1737565045a10a" STYLE="fork"/>
          <node TEXT="虚拟储存技术" ID="3bf173756519aa13d" STYLE="fork">
            <node TEXT="传统存储方式的缺点" ID="20d1737f07efb40e4" STYLE="fork">
              <node TEXT="一次性" ID="671737f0e8d5016c" STYLE="fork"/>
              <node TEXT="驻留性" ID="1ca1737f0ef35c01c" STYLE="fork"/>
            </node>
            <node TEXT="局部性原理" ID="20b1737f09b06b08f" STYLE="fork">
              <node TEXT="时间局部性" ID="2ed1737f09c485159" STYLE="fork"/>
              <node TEXT="空间局部性" ID="431737f09d8780c6" STYLE="fork"/>
              <node TEXT="高速缓存" ID="41737f09e6b2111" STYLE="fork"/>
            </node>
            <node TEXT="虚拟内存的定义和特征" ID="2f11737f0a14320e4" STYLE="fork">
              <node TEXT="多次性" ID="1ee1737f1efb00094" STYLE="fork"/>
              <node TEXT="对换性" ID="12c1737f1f1794058" STYLE="fork"/>
              <node TEXT="虚拟性" ID="2451737f1f31a6121" STYLE="fork"/>
            </node>
            <node TEXT="如何实现虚拟内存" ID="e51737f0a3bee032" STYLE="fork">
              <node TEXT="请求调页" ID="2041737f3000d6059" STYLE="fork"/>
              <node TEXT="页面置换" ID="3df1737f30318418e" STYLE="fork">
                <node TEXT="最佳置换算法(OPT)" ID="1351737f94b2af0a4" STYLE="fork">
                  <node TEXT="" ID="5a1737fa24025068" STYLE="fork"/>
                </node>
                <node TEXT="先进先出置换算法(FIFO)" ID="1651737f94e1cc063" STYLE="fork">
                  <node TEXT="" ID="3bc1737fa6a23c091" STYLE="fork"/>
                </node>
                <node TEXT="最近最久未使用算法(LRU)" ID="31a1737f9514fc0a7" STYLE="fork">
                  <node TEXT="" ID="1391737fa95603017" STYLE="fork"/>
                </node>
                <node TEXT="时钟置换算法(CLOCK)" ID="2851737f955c8a109" STYLE="fork">
                  <node TEXT="" ID="1e173806fb1520ee" STYLE="fork"/>
                </node>
                <node TEXT="改进型时钟置换算法" ID="2521737f9649e7042" STYLE="fork">
                  <node TEXT="" ID="3bb173808bbcd210e" STYLE="fork"/>
                </node>
                <node TEXT="对比" ID="fc173808cbd9007a" STYLE="fork">
                  <node TEXT="" ID="241173808cc553128" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="虚拟内存的实现" ID="15f1737f30405514e" STYLE="fork">
                <node TEXT="请求分页存储管理" ID="1971737f312fa2001" STYLE="fork">
                  <node TEXT="页表机制" ID="c01737f3effa804a" STYLE="fork">
                    <node TEXT="" ID="36a1737f79c1b9002" STYLE="fork"/>
                  </node>
                  <node TEXT="缺页中断机构" ID="28b1737f3f0dba059" STYLE="fork"/>
                  <node TEXT="地址变换机构" ID="1791737f3f34570b" STYLE="fork">
                    <node TEXT="" ID="2c01737f9306800cd" STYLE="fork"/>
                  </node>
                </node>
                <node TEXT="请求分段存储管理" ID="34c1737f31503b064" STYLE="fork"/>
                <node TEXT="请求段页式存储管理" ID="1a01737f316f270fd" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
        <node TEXT="内存保护" ID="2a11737551fcb0083" STYLE="fork"/>
        <node TEXT="页面分配策略" ID="146173808f06f7184" STYLE="fork">
          <node TEXT="相关概念" ID="14d173808f279602a" STYLE="fork">
            <node TEXT="" ID="30c17380958926076" STYLE="fork"/>
          </node>
          <node TEXT="页面分配、置换策略" ID="3be173808f3cd6088" STYLE="fork">
            <node TEXT="固定分配局部置换" ID="2f0173808f7cf816d" STYLE="fork"/>
            <node TEXT="可变分配全局置换" ID="193173808f9f910c3" STYLE="fork"/>
            <node TEXT="可变分配局部置换" ID="76173808fc1f409b" STYLE="fork"/>
          </node>
          <node TEXT="调入页面的时机" ID="27e17380901809045" STYLE="fork">
            <node TEXT="预调页策略" ID="3e4173809e22f711f" STYLE="fork"/>
            <node TEXT="请求调页策略" ID="1dc173809e4ede072" STYLE="fork"/>
          </node>
          <node TEXT="从何处调页" ID="1e317380903f8d061" STYLE="fork">
            <node TEXT="对换区空间足够" ID="28b17380a4dcce0b8" STYLE="fork"/>
            <node TEXT="对换区空间不够" ID="39717380a52069155" STYLE="fork"/>
            <node TEXT="Unix 方式" ID="23d17380a539c2163" STYLE="fork"/>
          </node>
          <node TEXT="抖动(颠簸)现象" ID="9a17380906de011b" STYLE="fork"/>
          <node TEXT="工作集" ID="30f1738090a8a804b" STYLE="fork">
            <node TEXT="" ID="18e17380adad5f17d" STYLE="fork"/>
          </node>
        </node>
      </node>
    </node>
    <node TEXT="文件管理" ID="11e1735cad0d2a0be" STYLE="bubble" POSITION="left">
      <node TEXT="文件的属性" ID="18e17380b03cee183" STYLE="fork">
        <node TEXT="文件名" ID="2ff17380b4fd0b113" STYLE="fork"/>
        <node TEXT="标识符" ID="23a17380b5903e0df" STYLE="fork"/>
        <node TEXT="类型" ID="1a17380b629aa14c" STYLE="fork"/>
        <node TEXT="位置" ID="4a17380b678b3019" STYLE="fork"/>
        <node TEXT="大小" ID="27917380b78962025" STYLE="fork"/>
        <node TEXT="创建时间" ID="35d17380b79222078" STYLE="fork"/>
        <node TEXT="上次修改/访问时间" ID="16517380b7a884153" STYLE="fork"/>
        <node TEXT="所有者信息" ID="5817380b7dcc4056" STYLE="fork"/>
        <node TEXT="保护信息" ID="7c17380b7f34305b" STYLE="fork"/>
      </node>
      <node TEXT="文件的逻辑结构" ID="2c217380b983d211c" STYLE="fork">
        <node TEXT="什么是逻辑结构" ID="f917380c84a7811" STYLE="fork"/>
        <node TEXT="无结构文件" ID="19717380b9a9e2147" STYLE="fork"/>
        <node TEXT="有结构文件" ID="da17380ba6905097" STYLE="fork">
          <node TEXT="顺序文件" ID="3d817380c6f852175" STYLE="fork">
            <node TEXT="链式存储" ID="26f17383ab1e0a079" STYLE="fork"/>
            <node TEXT="顺序存储" ID="20a17383ab36cc086" STYLE="fork">
              <node TEXT="可变长记录" ID="2a117383ab4b900c1" STYLE="fork"/>
              <node TEXT="定长记录" ID="25517383ab73fc05d" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="索引文件" ID="2f417380c735270db" STYLE="fork"/>
          <node TEXT="索引顺序文件" ID="32717380c74c980ec" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="文件目录" ID="38017383c5971013c" STYLE="fork">
        <node TEXT="文件控制块(FCB)" ID="24417383c5a2ba0e9" STYLE="fork"/>
        <node TEXT="目录结构" ID="2af17383dc8bfe0fc" STYLE="fork">
          <node TEXT="单级目录结构" ID="3617383dce576108" STYLE="fork">
            <node TEXT="" ID="14517383dfc9610b9" STYLE="fork"/>
          </node>
          <node TEXT="两级目录结构" ID="3ca17383dde0dd0ee" STYLE="fork">
            <node TEXT="" ID="23917383dfedb90d9" STYLE="fork"/>
          </node>
          <node TEXT="多级(树形)目录结构" ID="7017383df020e194" STYLE="fork">
            <node TEXT="" ID="6317383e0c981001" STYLE="fork"/>
          </node>
          <node TEXT="无环图目录结构" ID="2d417383e517b5053" STYLE="fork">
            <node TEXT="" ID="fa17383e7dc390a" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="索引节点(FCB改进)" ID="31117383e86ddb0c7" STYLE="fork">
          <node TEXT="" ID="3ad17383e8a9de077" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="文件的物理结构(分配方式)" ID="2fb17383f141e113f" STYLE="fork">
        <node TEXT="文件块、物理块" ID="28417383f8a51413b" STYLE="fork">
          <node TEXT="" ID="16417383f8d32411f" STYLE="fork"/>
        </node>
        <node TEXT="连续分配" ID="37a17383f15f3010b" STYLE="fork">
          <node TEXT="" ID="17617383fc5f7108e" STYLE="fork"/>
        </node>
        <node TEXT="链接分配" ID="30117383f42da403" STYLE="fork">
          <node TEXT="隐式链接" ID="303173840587c1123" STYLE="fork">
            <node TEXT="" ID="19d1738406a7f50fd" STYLE="fork"/>
          </node>
          <node TEXT="显式链接" ID="2661738408e785093" STYLE="fork">
            <node TEXT="" ID="1f0173840901fd0df" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="索引分配" ID="6917383f43eb709d" STYLE="fork">
          <node TEXT="链接方案" ID="17b1738467eb000bc" STYLE="fork">
            <node TEXT="" ID="1a1173847b31ba124" STYLE="fork"/>
          </node>
          <node TEXT="多层索引" ID="18f17384798fa6176" STYLE="fork">
            <node TEXT="" ID="3ce173847d7aeb133" STYLE="fork"/>
          </node>
          <node TEXT="混合索引" ID="2ad1738479a02115f" STYLE="fork">
            <node TEXT="" ID="90173847e7285132" STYLE="fork"/>
          </node>
          <node TEXT="对比" ID="10317384807383114" STYLE="fork">
            <node TEXT="" ID="231738480e0ee067" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="对比" ID="3b31738481a67e07a" STYLE="fork">
          <node TEXT="" ID="3bd1738481b0c1197" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="文件存储空间管理" ID="f1738484895707f" STYLE="fork">
        <node TEXT="存储空间划分与初始化" ID="1471738484c9ac04c" STYLE="fork">
          <node TEXT="" ID="35173848674f6029" STYLE="fork"/>
        </node>
        <node TEXT="管理方法" ID="3bc1738484e9af123" STYLE="fork">
          <node TEXT="空闲表法" ID="1da1738484fcd0061" STYLE="fork">
            <node TEXT="" ID="21a17384912d770ee" STYLE="fork"/>
          </node>
          <node TEXT="空闲链表法" ID="ae173848511fb102" STYLE="fork">
            <node TEXT="空闲盘块链" ID="ca17384859ee103c" STYLE="fork">
              <node TEXT="" ID="3e51738496083d00f" STYLE="fork"/>
            </node>
            <node TEXT="空闲盘区链" ID="2be1738485d0e5123" STYLE="fork">
              <node TEXT="" ID="3201738496967411e" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="位示图法" ID="2261738485399b064" STYLE="fork">
            <node TEXT="" ID="1d3173849e679618e" STYLE="fork"/>
          </node>
          <node TEXT="成组链接法" ID="18e17384856ea80f2" STYLE="fork">
            <node TEXT="" ID="15317385a0baf4019" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="文件的基本操作" ID="29b17385a33fab15d" STYLE="fork">
        <node TEXT="创建文件(creat)" ID="19a17385a3614a09d" STYLE="fork"/>
        <node TEXT="删除文件(delete)" ID="21217385a37912163" STYLE="fork"/>
        <node TEXT="打开文件(open)" ID="fd17385d6a03809d" STYLE="fork">
          <node TEXT="" ID="b417385dc32f510a" STYLE="fork"/>
        </node>
        <node TEXT="关闭文件(close)" ID="1d417385dc7e6c0a3" STYLE="fork"/>
        <node TEXT="读文件(read)" ID="2bd17385de095a112" STYLE="fork"/>
        <node TEXT="写文件(write)" ID="b817385e4f9da13e" STYLE="fork"/>
      </node>
      <node TEXT="文件共享" ID="38917385e6bd53094" STYLE="fork">
        <node TEXT="基于索引结点的共享(硬链接)" ID="32317385e707e8168" STYLE="fork">
          <node TEXT="" ID="8f17385eee404062" STYLE="fork"/>
        </node>
        <node TEXT="基于符号链的共享(软链接)" ID="22517385e76b77083" STYLE="fork">
          <node TEXT="" ID="1cd17385ef3278042" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="文件保护" ID="317388ac7b6a12c" STYLE="fork">
        <node TEXT="口令保护" ID="7117388ac8d2a003" STYLE="fork"/>
        <node TEXT="加密保护" ID="24917388b213b805e" STYLE="fork"/>
        <node TEXT="访问控制" ID="3c317388b35b4d01" STYLE="fork"/>
      </node>
      <node TEXT="文件系统的层次结构" ID="8117388c040d214b" STYLE="fork">
        <node TEXT="" ID="9917388c05b66085" STYLE="fork"/>
      </node>
      <node TEXT="磁盘的结构" ID="14017388c5e5e0022" STYLE="fork">
        <node TEXT="磁盘/磁道/扇区" ID="2d917388c5f5000d9" STYLE="fork">
          <node TEXT="" ID="1bf17388c909a910e" STYLE="fork"/>
        </node>
        <node TEXT="如何在磁盘中读写数据" ID="21717388c62a70033" STYLE="fork">
          <node TEXT="" ID="18517388ca9e1f128" STYLE="fork"/>
        </node>
        <node TEXT="盘面/柱面/物理地址" ID="28617388c654fc10e" STYLE="fork">
          <node TEXT="" ID="c817388cf57ca158" STYLE="fork"/>
        </node>
        <node TEXT="磁盘分类" ID="c817388c6830f122" STYLE="fork">
          <node TEXT="" ID="3ac17388d18e3416c" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="磁盘调度算法" ID="34017388d38900185" STYLE="fork">
        <node TEXT="读写时间" ID="3df17388d39cd603a" STYLE="fork">
          <node TEXT="" ID="33617388fb8639112" STYLE="fork"/>
        </node>
        <node TEXT="调度算法" ID="3ce17388d3f9f70ce" STYLE="fork">
          <node TEXT="先来先服务(FCFS)" ID="2f417388d40f4504b" STYLE="fork"/>
          <node TEXT="最短寻道时间优先(SSTF)" ID="2ed17388d43ba30c4" STYLE="fork"/>
          <node TEXT="扫描算法(SCAN)" ID="39617388d478590f8" STYLE="fork"/>
          <node TEXT="LOOK调度算法" ID="3ae173897524b10a5" STYLE="fork"/>
          <node TEXT="循环扫描算法(C-SCAN)" ID="3e17388d48ad206b" STYLE="fork"/>
          <node TEXT="C-LOOK算法" ID="a2173897caefd115" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="减少磁盘延时" ID="86173899c572b005" STYLE="fork">
        <node TEXT="交替编号" ID="1f1173899c76fb13" STYLE="fork"/>
        <node TEXT="磁盘物理地址设计" ID="2cf17389a5a0c518" STYLE="fork">
          <node TEXT="" ID="24c17389a5d7c1164" STYLE="fork"/>
        </node>
        <node TEXT="错位命名" ID="30117389a76ecc109" STYLE="fork">
          <node TEXT="" ID="32517389ac72b4006" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="磁盘管理" ID="1d417389ae0ba7137" STYLE="fork">
        <node TEXT="磁盘初始化" ID="31a17389ae177f18b" STYLE="fork">
          <node TEXT="" ID="3b517389b207f7011" STYLE="fork"/>
        </node>
        <node TEXT="引导块" ID="10b17389ae2443085" STYLE="fork">
          <node TEXT="" ID="30c17389b92b2e17b" STYLE="fork"/>
        </node>
        <node TEXT="坏块管理" ID="9e17389b974890ec" STYLE="fork">
          <node TEXT="" ID="2e317389b98b5a06c" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="I/O 管理" ID="2b31735cad51f100c" STYLE="bubble" POSITION="left">
      <node TEXT="I/O设备分类" ID="8417389bca37c08f" STYLE="fork">
        <node TEXT="按使用特性分类" ID="32317389c0058c04b" STYLE="fork">
          <node TEXT="人机交互类外设" ID="25c17389bf3fe60f" STYLE="fork"/>
          <node TEXT="存储类" ID="7717389bfda7905c" STYLE="fork"/>
          <node TEXT="物理通信设备" ID="35117389c0a4661" STYLE="fork"/>
        </node>
        <node TEXT="按传输速度分类" ID="13a17389c1142716b" STYLE="fork">
          <node TEXT="低速设备" ID="1e917389c151a716b" STYLE="fork"/>
          <node TEXT="中速设备" ID="d217389c1dc8b12d" STYLE="fork"/>
          <node TEXT="高速设备" ID="30117389c286d2191" STYLE="fork"/>
        </node>
        <node TEXT="按信息交换的单位" ID="3a017389c350290db" STYLE="fork">
          <node TEXT="块设备" ID="37b17389c37a6a0c1" STYLE="fork"/>
          <node TEXT="字符设备" ID="1e17389c386e603a" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="I/O控制器" ID="2f917389c58a82044" STYLE="fork">
        <node TEXT="机械部件" ID="1f817389c5a1a608b" STYLE="fork"/>
        <node TEXT="电子部件" ID="1c217389c5b133188" STYLE="fork">
          <node TEXT="接受和识别CPU的命令" ID="10b17389c8976f149" STYLE="fork"/>
          <node TEXT="向CPU报告设备状态" ID="317389c8e7c1085" STYLE="fork"/>
          <node TEXT="数据交换" ID="17e17389c9139f0e2" STYLE="fork"/>
          <node TEXT="地址识别" ID="7d17389c92328146" STYLE="fork"/>
        </node>
        <node TEXT="组成" ID="117389d541f3051" STYLE="fork">
          <node TEXT="" ID="25917389d6c83410c" STYLE="fork"/>
        </node>
        <node TEXT="内存映像I/O 和 寄存器独立编址" ID="e117389d584b70b8" STYLE="fork">
          <node TEXT="" ID="3e317389d86f160c3" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="I/O控制方式" ID="29017389db9b92076" STYLE="fork">
        <node TEXT="程序直接控制" ID="37e17389dbba0e172" STYLE="fork">
          <node TEXT="" ID="1b217389ed019f01b" STYLE="fork"/>
        </node>
        <node TEXT="中断驱动方式" ID="12717389dbd03706e" STYLE="fork">
          <node TEXT="" ID="2ea17389f17675199" STYLE="fork"/>
        </node>
        <node TEXT="直接存储器存取(DMA)方式" ID="4e17389dbe268143" STYLE="fork">
          <node TEXT="" ID="1d417389f5d70913f" STYLE="fork"/>
        </node>
        <node TEXT="通道控制方式" ID="2e117389dbeeed0b" STYLE="fork">
          <node TEXT="" ID="12d1738a6bbc8e00e" STYLE="fork"/>
        </node>
        <node TEXT="对比" ID="ad1738a6dc8ee0b" STYLE="fork">
          <node TEXT="" ID="3c21738a6de2b2117" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="I/O软件层次结构" ID="3971738a723692013" STYLE="fork">
        <node TEXT="用户层软件" ID="2fa1738a7258ab037" STYLE="fork">
          <node TEXT="" ID="3b51738a75bd66003" STYLE="fork"/>
        </node>
        <node TEXT="设备独立性软件" ID="3151738a7668430e6" STYLE="fork">
          <node TEXT="" ID="20d1738a8e64cb157" STYLE="fork"/>
        </node>
        <node TEXT="设备驱动程序" ID="d21738a7682d312a" STYLE="fork">
          <node TEXT="" ID="2b81738a9200b012b" STYLE="fork"/>
        </node>
        <node TEXT="中断处理程序" ID="1911738a7699160a5" STYLE="fork">
          <node TEXT="" ID="27d1738a95633013" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="I/O核心子系统" ID="1ff17389deb87f00d" STYLE="fork">
        <node TEXT="假脱机技术(SPOOLing)" ID="3991738aa1e88a0e6" STYLE="fork">
          <node TEXT="脱机技术" ID="561738aa568240cb" STYLE="fork"/>
          <node TEXT="假脱机技术实现原理" ID="1141738aa58df814f" STYLE="fork">
            <node TEXT="" ID="aa1738ab5198e09" STYLE="fork"/>
          </node>
          <node TEXT="共享打印机原理分析" ID="2611738aa6a1dd08c" STYLE="fork">
            <node TEXT="" ID="17d1738abcb9940a5" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="设备分配与回收" ID="3701738abdfefb06a" STYLE="fork">
          <node TEXT="设备分配应该考虑的因素" ID="11738ac0d0cc02c" STYLE="fork">
            <node TEXT="设备的固有属性" ID="15f1738ac12da914a" STYLE="fork"/>
            <node TEXT="设备分配算法" ID="2b21738ac14a4307f" STYLE="fork"/>
            <node TEXT="设备分配的安全性" ID="3551738ac161de04a" STYLE="fork"/>
          </node>
          <node TEXT="静态分配和动态分配" ID="1261738ac8383e182" STYLE="fork"/>
          <node TEXT="数据结构" ID="1151738ac85c02098" STYLE="fork">
            <node TEXT="" ID="2871738ad3200600e" STYLE="fork"/>
          </node>
          <node TEXT="分配过程" ID="3321738addc7e806f" STYLE="fork">
            <node TEXT="" ID="1171738addd1e1164" STYLE="fork"/>
          </node>
          <node TEXT="分配过程改进" ID="3c11738addf79e046" STYLE="fork">
            <node TEXT="" ID="1d1738ade0ce20c4" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="缓冲区管理" ID="1bb1738ae52be708e" STYLE="fork">
          <node TEXT="缓冲区的作用" ID="2451738ae53df517f" STYLE="fork"/>
          <node TEXT="单缓冲" ID="c1738ae570e9085" STYLE="fork">
            <node TEXT="" ID="18c1738af404f4148" STYLE="fork"/>
          </node>
          <node TEXT="双缓冲" ID="2401738ae58ed30bb" STYLE="fork">
            <node TEXT="" ID="34d1738afe2e1609c" STYLE="fork"/>
          </node>
          <node TEXT="循环缓冲" ID="3731738ae5b513063" STYLE="fork">
            <node TEXT="" ID="2741738b05c2a7046" STYLE="fork"/>
          </node>
          <node TEXT="缓冲池" ID="18b1738ae5caae12c" STYLE="fork">
            <node TEXT="" ID="14b1738b149e6912f" STYLE="fork"/>
          </node>
        </node>
      </node>
    </node>
  </node>
</map>