package {
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;

	/**
	 * @author Marvin
	 */
	[SWF(width="505", height="245", backgroundColor="#FFFFFF", frameRate="40")]
	public class AirTest extends Sprite {
		private var back : AppBg;

		public function AirTest() {
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;

			back = new AppBg();
			addChild(back);
			back.minimizeBtn.buttonMode = true;
			back.closeBtn.buttonMode = true;
			back.addEventListener(MouseEvent.MOUSE_DOWN, moveWindow);
			back.minimizeBtn.addEventListener(MouseEvent.CLICK, minimizeApp);
			back.closeBtn.addEventListener(MouseEvent.CLICK, closeApp);
		}

		private function closeApp(event : MouseEvent) : void {
			// close Application
			stage.nativeWindow.close();
		}

		private function minimizeApp(event : MouseEvent) : void {
			// minimize Application
			 stage.nativeWindow.minimize();
		}

		private function moveWindow(event : MouseEvent) : void {
			// move Application (on MOUSE_DOWN)
			stage.nativeWindow.startMove();
		}
	}
}
