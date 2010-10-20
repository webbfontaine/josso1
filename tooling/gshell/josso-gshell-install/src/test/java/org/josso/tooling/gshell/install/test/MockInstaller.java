/*
 * JOSSO: Java Open Single Sign-On
 *
 * Copyright 2004-2009, Atricore, Inc.
 *
 * This is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2.1 of
 * the License, or (at your option) any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this software; if not, write to the Free
 * Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA, or see the FSF site: http://www.fsf.org.
 *
 */

package org.josso.tooling.gshell.install.test;

import org.josso.tooling.gshell.install.installer.VFSInstaller;
import org.josso.tooling.gshell.install.TargetPlatform;
import org.apache.commons.vfs.FileSystem;
import org.apache.commons.vfs.FileSystemManager;

/**
 * Created by IntelliJ IDEA.
 * User: sgonzalez
 * Date: Dec 29, 2008
 * Time: 5:31:34 PM
 * To change this template use File | Settings | File Templates.
 */
public class MockInstaller extends VFSInstaller {

    public FileSystemManager getFSMgr() {
        return super.getFileSystemManager();
    }

    protected MockInstaller(TargetPlatform targetPlatform) {
        super(targetPlatform);
    }

    protected MockInstaller() {
        super();
    }
}
