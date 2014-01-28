-- Copyright 2014 Nils Nordman <nino at nordman.org>
-- License: MIT (see LICENSE)

ffi = require 'ffi'
require 'ljglibs.cdefs.gtk'
core = require 'ljglibs.core'
gobject = require 'ljglibs.gobject'
require 'ljglibs.gio.application'
import gc_ptr from gobject

C = ffi.C

core.define 'GtkApplication < GApplication', {
}, (t, application_id, flags) ->
  gc_ptr(C.gtk_application_new application_id, flags)
