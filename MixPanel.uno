using Uno;
using Uno.UX;
using Uno.Collections;
using Uno.Compiler.ExportTargetInterop;
using Fuse;
using Fuse.Triggers;
using Fuse.Controls;
using Fuse.Controls.Native;
using Fuse.Controls.Native.Android;

namespace MixPanel
{
	interface MixPanelImpl
	{
		void Init(string key);
	}
	
	public class MixPanel
	{

		MixPanelImpl _impl;

		public MixPanel()
		{
			if defined (iOS)
			{
				_impl = new MixPanelIOSImpl();
			}
			/*else if defined (android)
			{
				_impl = new MixPanelAndroidImpl();
			}*/
		}
		
		public void Init(string key)
		{
			_impl.Init(key);
		}
		


		/*[Require("Gradle.Dependency.Compile", "com.mixpanel.android:mixpanel-android:4.+")]
		[Require("Gradle.Dependency.Compile", "com.google.android.gms:play-services:7.5.0+")]
		[Foreign(Language.Java)]
		void InitAndroidImpl()
		@{
			
		@}*/
	}
}
