'
' Copyright 2011 Jacek Caban for CodeWeavers
'
' This library is free software; you can redistribute it and/or
' modify it under the terms of the GNU Lesser General Public
' License as published by the Free Software Foundation; either
' version 2.1 of the License, or (at your option) any later version.
'
' This library is distributed in the hope that it will be useful,
' but WITHOUT ANY WARRANTY; without even the implied warranty of
' MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
' Lesser General Public License for more details.
'
' You should have received a copy of the GNU Lesser General Public
' License along with this library; if not, write to the Free Software
' Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA
'

Option Explicit

call ok(true, "true is not true?")
ok true, "true is not true?"
call ok((true), "true is not true?")

ok not false, "not false but not true?"
ok not not true, "not not true but not true?"

Call ok(true = true, "true = true is false")
Call ok(false = false, "false = false is false")
Call ok(not (true = false), "true = false is true")
Call ok("x" = "x", """x"" = ""x"" is false")
Call ok(empty = empty, "empty = empty is false")
Call ok(empty = "", "empty = """" is false")

Call ok(getVT(false) = "VT_BOOL", "getVT(false) is not VT_BOOL")
Call ok(getVT(true) = "VT_BOOL", "getVT(true) is not VT_BOOL")
Call ok(getVT("") = "VT_BSTR", "getVT("""") is not VT_BSTR")
Call ok(getVT("test") = "VT_BSTR", "getVT(""test"") is not VT_BSTR")
Call ok(getVT(Empty) = "VT_EMPTY", "getVT(Empty) is not VT_EMPTY")
Call ok(getVT(null) = "VT_NULL", "getVT(null) is not VT_NULL")
Call ok(getVT(0) = "VT_I2", "getVT(0) is not VT_I2")
Call ok(getVT(1) = "VT_I2", "getVT(1) is not VT_I2")
Call ok(getVT(0.5) = "VT_R8", "getVT(0.5) is not VT_R8")
Call ok(getVT(0.0) = "VT_R8", "getVT(0.0) is not VT_R8")
Call ok(getVT(2147483647) = "VT_I4", "getVT(2147483647) is not VT_I4")
Call ok(getVT(2147483648) = "VT_R8", "getVT(2147483648) is not VT_R8")

reportSuccess()
