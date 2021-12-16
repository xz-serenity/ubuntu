#########################################################################
#
#  This file contains preference settings that were in effect
#  as you closed your last polymake session.
#
#  Initially it contains copies of "prefer" commands scattered over the
#  rule files.  They are commented out, since they come into action
#  as soon as the rule files are loaded.
#
#  Later on, each interactive "prefer" command you type in the polymake
#  shell is also recorded here, in the chronological order.
#  Prior commands having lost any effect are wiped out from the file
#  automatically.
#
#  You can also edit this file manually, including or deleting "prefer"
#  commands, or even other commands recognized by the interactive shell.
#  But never edit it while polymake processes are running, otherwise
#  you risk to do it in vain as all your changes may be overwritten.
#
#  To revert to the default preferences later, comment out or delete
#  your changes, or execute the interactive command 'reset_preference'.
#
#  Please be aware that this file is interpreted by polymake after all
#  rule files, unlike "customize.pl".
#
#########################################################################
#
#  The rule files are rescanned for new preference lists as soon as you
#  run a polymake version newer than recorded here, or use an application
#  for the first time.
#  If you have inserted new "prefer" commands in the rules and want them
#  to appear here right now, comment out the following line and rerun polymake.
$version=v4.0;

#########################################
#
#  Settings common for all applications

package Polymake::User;

#  Key to press for interactive help in the shell.  Defaults to F1.
# $help_key='_k1';

#  Add delimiters for better readability in help text.
# $help_delimit=1;

#  Extensions which could not be configured for given architecture
# 
# ARCH('x86_64') and
# %disabled_extensions=(
# );

#  Maximal number of commands stored in the interactive shell's history.
#  If set to undef, history list grows unlimited.
# $history_size=200;

#  A list of directories where to look for scripts
# @lookup_scripts=(
# );

#  Application to start with as the current one
$default_application='polytope';

#  Editor for the ''history'' command.
#  Must be a complete shell command. If the temporary file name is expected somewhere in the middle
#  of the arguments, please use the placeholder %f.
# $history_editor='vi';

#  Applications to be loaded at the beginning of each interactive or batch session
@start_applications=(
   'common',
   'fan',
   'fulton',
   'graph',
   'group',
   'ideal',
   'matroid',
   'polytope',
   'topaz',
   'tropical'
);

#  A list of directories containing imported and/or locally created extensions
# @extensions=(
# );

#  Tell about the actions of the perl/C++ interface generator:
#  0 - nothing, 1 - compiler calls and source file updates, 2 - source code generated
# $Polymake::User::Verbose::cpp=0;

#  Notify about nontrivial actions during data file processing
# $Polymake::User::Verbose::files=1;

#  Display the copyright notices and URLs of third-party software:
#  0 - never, 1 - at the first use in the current session, 2 - always
# $Polymake::User::Verbose::credits=1;

#  Notify about external programs starting in the background
#  (not to be mixed up with credits!)
# $Polymake::User::Verbose::external=0;

#  Display the information about the rules:
#  0 - nothing, 1 - significant failures, 2 - summary and all failed preconditions, 3 - executed rule executed
# $Polymake::User::Verbose::rules=1;

#  Reveal the internals of the rule scheduler:
#  0 - nothing, 1 - summary and statistics, 2 - initial rule selection,
#  3 - shortest path search (overwhelming amount of data)
# $Polymake::User::Verbose::scheduler=0;


#########################################
application common;

# prefer "threejs";

# prefer "default";


#########################################
application graph;

# prefer "tikz.lattice";


#########################################
application group;


#########################################
application ideal;


#########################################
application topaz;

# prefer "morse_greedy";


#########################################
application polytope;

# prefer "*.convex_hull ppl, cdd, lrs, beneath_beyond";

# prefer "*.simplex cdd, lrs, to";


#########################################
application fan;


#########################################
application fulton;


#########################################
application matroid;


#########################################
application tropical;


#########################################
