# $Id$

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> "PF",
	LIBS		=> "",
	OBJECT		=> '$(O_FILES)',
	TYPEMAPS	=> ["typemap"],
	INC		=> "",
	VERSION_FROM	=> "PF.pm",
);
