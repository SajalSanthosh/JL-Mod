/*
 * Copyright 2012 Kulikov Dmitriy
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package javax.microedition.media.control;

import javax.microedition.media.MediaException;

public interface VideoControl extends GUIControl {
	int USE_DIRECT_VIDEO = 1;

	Object initDisplayMode(int mode, Object arg);

	void setDisplayLocation(int x, int y);

	void setDisplaySize(int width, int height) throws MediaException;

	void setDisplayFullScreen(boolean fullScreenMode) throws MediaException;

	void setVisible(boolean visible);

	int getSourceWidth();

	int getSourceHeight();

	int getDisplayX();

	int getDisplayY();

	int getDisplayWidth();

	int getDisplayHeight();

	byte[] getSnapshot(String imageType) throws MediaException;
}