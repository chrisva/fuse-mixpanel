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
	public class MixPanelIOSImpl : MixPanelImpl
	{

		[Require("Cocoapods.Podfile.Target", "pod 'Mixpanel'")]
		[Require("Source.Declaration", "#import \"Mixpanel/Mixpanel.h\"")]
        [Foreign(Language.ObjC)]
		public void Init(string key)
		@{
			Mixpanel* mixpanel = [Mixpanel sharedInstanceWithToken: key];
			[mixpanel track:@"Plan selected" 
			 properties:@{ @"Plan": @"Premium" }];

		NSLog(@"sending plan selected %@", key);
		@}

	}

}
