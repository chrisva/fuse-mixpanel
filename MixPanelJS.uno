using Uno;
using Uno.UX;
using Uno.Threading;
using Uno.Text;
using Uno.Platform;
using Uno.Compiler.ExportTargetInterop;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;
using Fuse.Reactive;

namespace MixPanel
{
	[UXGlobalModule]
	public sealed class MixPanelModule : NativeModule
	{
		static readonly MixPanelModule _instance;

		MixPanel _mixPanel = new MixPanel();

		public MixPanelModule()
		{
			if(_instance != null) return;
			_instance = this;
				
			Resource.SetGlobalKey(_instance, "MixPanel");

            //functions
            AddMember(new NativeFunction("init", Init));

		}

        // functions
        static object Init(Context context, object[] args)
        {
			var key = args[0].ToString();
			_instance._mixPanel.Init(key);
			return null;
        }

        

	}
}
