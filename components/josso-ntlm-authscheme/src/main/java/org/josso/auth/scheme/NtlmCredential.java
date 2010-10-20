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
package org.josso.auth.scheme;

import org.josso.auth.BaseCredential;

/**
 * Created by IntelliJ IDEA.
 * User: ajadzinsky
 * Date: Apr 29, 2008
 * Time: 11:25:32 AM
 * To change this template use File | Settings | File Templates.
 */
public class NtlmCredential extends BaseCredential {
    public NtlmCredential() {
        super();
    }

    public NtlmCredential(Object credential) {
        super(credential);
    }
}
