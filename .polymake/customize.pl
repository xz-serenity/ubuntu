#########################################################################
#
#  This file contains copies of all customizable variables
#  scattered across the rule files.
#
#  The assignments can stay commented out as long as you are satisfied
#  with the default settings.  To change them, either edit this file
#  directly or call the user function 'set_custom'.
#  To revert to the default values later, simply comment out
#  the corresponding assignments or call the user function 'reset_custom'.
#
#  Elements of hash arrays can be activated selectively,
#  entries with default values may stay commented as long as needed.
#  But don't forget the last line with the closing parenthesis!
#
#  Be sure to edit this file only after you have finished the
#  interactive polymake session, otherwise your changes can be lost.
#
#  Some variables come from the rule autoconfiguration sections.
#  Their assignments are guarded by the `ARCH' condition, since they may
#  have different values for different architectures.
#
#  Variables commented out with special marker #G# are actually inherited
#  from some global configuration file.  The effective values can be queried
#  from the interactive shell only.  Activating these variables here
#  will override the global settings.
#
#  Please be aware that this file is loaded as the very first,
#  before any rule file.  It gives the settings made here a chance
#  to be compiled in the rule code.  But you cannot refer here to any
#  objects created in the course of parsing the rule files, that is,
#  applications, object types, or preference lists.
#  Please use another file in this directory: "prefer.pl" for these
#  purposes.
#
#########################################################################
#
# The rule files are rescanned for new custom variables as soon as you
# run a polymake version newer than recorded here, or use an application
# for the first time.
# If you have introduced new custom variables in the rules and want them
# to appear here right now, comment out the following line and run polymake.
$version=v4.0;

########################
package Polymake::Core::CPlusPlus;

#  Locations of the automatically generated source code of C++/perl wrappers for private use.
# 
# %private_wrappers=(
# );

########################
package Polymake::common;

#  persisted polynomial variable names by package
# 
# %polynomial_var_names=(
# );

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   'geomview.rules' => -1637498246 ,
   'pdfviewer.rules' => '1637498246#' ,
   'polydb.rules' => '1637498246' ,
   'postscript.rules' => '1637498246#' ,
   'povray.rules' => '1637498246#' ,
   'sketch.rules' => '1637498246#' ,
   'svg.rules' => -1637498246 ,
   'webbrowser.rules' => '1637498246' ,
   'x3d.rules' => '1637498246#' ,
);

#  polyDB: The color for collection names in info output
# $PolyDB::default::db_collection_color='bold yellow';

#  polyDB: the version of polyDB used
# $PolyDB::default::db_polydb_version='2.1';

#  polyDB: Whether to use SSL
# $PolyDB::default::useSSL=1;

#  @category Database Access
#  polyDB: The hostname of the database, default 'polymake.org'
# $PolyDB::default::db_host='db.polymake.org';

#  polyDB: The timeout for waiting to get a socket connection to the db server
# $PolyDB::default::db_socket_timeout=120000;

#  polyDB: The color for section names in info output
# $PolyDB::default::db_section_color='bold red';

#  polyDB: whether some pretty printing shoudl be applied for the info method
#          needs to be switched off for testing
# $PolyDB::default::pretty_print_doc=1;

#  polyDB: The name of the collection you want to access. Set this if you want to access a certain collection all (or most of) the time.
# $PolyDB::default::db_collection_name='';

#  polyDB: The database username, default 'polymake'
# $PolyDB::default::db_user='polymake';

#  polyDB: The name of the section you want to access. Set this if you want to access a certain section all (or most of) the time.
# $PolyDB::default::db_section_name='';

#  polyDB: The database password, default 'database'
# $PolyDB::default::db_pwd='database';

#  polyDB: The name of the database for the collections
# $PolyDB::default::db_name='polydb';

#  polyDB: The name of the authentication database, default 'admin'
# $PolyDB::default::db_auth_db='admin';

#  polyDB: The port of the database, default 27017
# $PolyDB::default::db_port='27017';

#  for circles representing single geometric points
# $Postscript::point_radius=4;

#  a postscript file viewer, e.g. ghostscript
ARCH('x86_64') and
$Postscript::viewer=undef;

#  spacing between points (lines) and labels
# $Postscript::text_spacing=3;

#  text labels
# $Postscript::fontsize=10;

#  vertical margin
# $Postscript::Hmargin=50;

#  height of DIN A4 sheet
# $Postscript::Hpaper=841;

#  width of DIN A4 sheet
# $Postscript::Wpaper=595;

#  horizontal margin
# $Postscript::Wmargin=30;

#  normal line width
# $Postscript::line_width=1;

#  text labels
# $Postscript::fontname='Times-Roman';

#  thickness of the lines/tubes
# $Povray::lines_thickness=0.03;

#  width of picture
# $Povray::width=400;

#  length of arrow head
# $Povray::headLength=0.3;

#  a povray renderer, e.g. povray
ARCH('x86_64') and
$Povray::viewer=undef;

#  relative width of arrow head
# $Povray::headWidth=2;

#  height of picture
# $Povray::height=300;

#  options for povray rendering
# $Povray::cmd_options='+D +A0.5';

#  thickness of the points
# $Povray::points_thickness=0.06;

#  sketch executable
ARCH('x86_64') and
$Sketch::sketch=undef;

#  coordinates of the viewpoint
# @Sketch::default::view_point=(
#    10,
#    11,
#    9
# );

#  scaling factor
# $Sketch::default::scale=2;

#  camera orientation: default is y-axis towards zenith
# @Sketch::default::view_up=(
#    0,
#    1,
#    0
# );

#  coordinates of a point on the view axis: default is the origin
# @Sketch::default::view_direction=(
#    0,
#    0,
#    0
# );

#  for arrows in directed graphs
# $ThreeJS::default::arrowheadwidth=0.07;

#  coordinates of a point on the view axis: default is the origin
# @ThreeJS::default::view_direction=(
#    0,
#    0,
#    0
# );

#  camera near plane
# $ThreeJS::default::near_plane=0.1;

#  camera orientation: default is y-axis towards zenith
# @ThreeJS::default::view_up=(
#    0,
#    1,
#    0
# );

#  edge thickness
# $ThreeJS::default::lines_thickness=1;

#  background opacity
# $ThreeJS::default::bgOpacity=1;

#  for arrows in directed graphs, scaled with the edge length
# $ThreeJS::default::arrowheadlength=0.2;

#  for arrows in directed graphs: keep undef for the same color as the edge
# $ThreeJS::default::arrowheadcolor=undef;

#  background color
# @ThreeJS::default::bgColor=(
#    1,
#    1,
#    1
# );

#  coordinates of the viewpoint
# @ThreeJS::default::view_point=(
#    0,
#    0,
#    5
# );

#  camera field of view angle
# $ThreeJS::default::fov=75;

#  scaling factor
# $ThreeJS::default::scale=1;

#  point thickness
# $ThreeJS::default::points_thickness=0.04;

#  camera far plane
# $ThreeJS::default::far_plane=1000;

#  coordinates of the viewpoint
# @TikZ::default::view_point=(
#    10,
#    11,
#    9
# );

#  edge label style
# $TikZ::default::edgelabelstyle='pos=0.5,sloped,below';

#  camera orientation: default is y-axis towards zenith
# @TikZ::default::view_up=(
#    0,
#    1,
#    0
# );

#  scaling factor
# $TikZ::default::scale=2;

#  coordinates of a point on the view axis: default is the origin
# @TikZ::default::view_direction=(
#    0,
#    0,
#    0
# );

#  webbrowser supporting JavaScript and SVG documents
ARCH('x86_64') and
$Visual::webbrowser='sensible-browser';

#  pdflatex executable
ARCH('x86_64') and
$Visual::pdflatex='pdflatex';

#  PDF viewer
ARCH('x86_64') and
$Visual::pdfviewer=undef;

#  edges of facets and graphs: black
# $Visual::Color::edges='0 0 0';

#  facets in famous polymake-green
# $Visual::Color::facets='119 236 158';

#  vertices: red
# $Visual::Color::vertices='255 0 0';

#  A list of custom symbolic color names, the values should be parseable as [[RGB]].
#  Note that these names will always be checked first, i.e. override the X11 color names.
# 
# %Visual::Color::symbolicnames=(
#  polymakegreen => '119 236 158' ,
#  polymakeorange => '#e0a300' ,
# );

#  color for artificial facets resulting from cutting off
# $Visual::Color::cutoff='255 0 0';

#  scale factor for text size/spacing, points/edge thickness and arrow head measures 
# $X3d::scale=0.01;

#  coordinates of a point on the view axis: default is the origin
# @X3d::view_at=(
#    0,
#    0,
#    0
# );

#  X3d viewer
ARCH('x86_64') and
$X3d::x3dviewer='xdg-open';

#  labels for the coordinate axes
# @X3d::axeslabels=(
#    'x',
#    'y',
#    'z'
# );

#  for arrows in directed graphs
# $X3d::arrowhead_radius=3.5;

#  point radius; the absolut vertex radius will be VertexThickness * scale * point_radius
# $X3d::point_radius=4;

#  for arrows in directed graphs
# $X3d::arrowhead_length=25;

#  edge radius; the absolut edge radius will be EdgeThickness * scale * point_radius for cylinders
# $X3d::edge_radius=1;

#  spacing between points (lines) and labels
# $X3d::text_spacing=2;

#  camera orientation: default is Y-axis towards zenith (Z-axis in blender)
# @X3d::view_up=(
#    0,
#    1,
#    0
# );

#  show coord axes?
# $X3d::coordinate_axes=0;

#  text labels: font style; recognized values "PLAIN","BOLD","ITALIC", "BOLDITALIC"
# $X3d::font_style='PLAIN';

#  text labels: font family; recognized values "SERIF","SANS","TYPEWRITER"
# $X3d::font_family='SANS';

#  coordinates of the viewpoint
# @X3d::view_point=(
#    10,
#    11,
#    9
# );

#  for arrows in directed graphs: keep undef for the same color as the edge
# $X3d::arrowheadcolor=undef;

#  use lines instead of cylinders for edges
# $X3d::use_lines=0;

#  text labels
# $X3d::font_size=14;

########################
package Polymake::fan;

#  path to gfan_topolyhedralfan
ARCH('x86_64') and
$gfan_topolyhedralfan='gfan_topolyhedralfan';

#  path to gfan_secondaryfan
ARCH('x86_64') and
$gfan_secondaryfan='gfan_secondaryfan';

#  path to gfan_bases
ARCH('x86_64') and
$gfan_bases='gfan_bases';

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   'gfan.rules' => '1637498246' ,
   'splitstree.rules' => -1637498246 ,
);

#  Color for flaps in the visualization of planar nets
# $Visual::Color::PlanarNetFlapColor='255 255 255';

#  Color for the vertices of a tight span not corresponding to taxa
# $Visual::Color::non_tax_vertices='255 255 0';

########################
package Polymake::polytope;

#  Steiner points are drawn thicker than the vertices
# $steiner_point_thickness=1;

#  enable debugging output from lrs
#  does not work with the bundled lrs version,
#  requires an lrs installation that was built without -DLRS_QUIET
# $verbose_lrs=0;

#  enable debugging output from cdd
# $verbose_cdd=0;

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   '_4ti2.rules' => -1637498246 ,
   'azove.rules' => -1637498246 ,
   'latte.rules' => -1637498246 ,
   'mptopcom.rules' => -1637498246 ,
   'porta.rules' => -1637498246 ,
   'qhull.rules' => -1637498246 ,
   'topcom.rules' => -1637498246 ,
   'vinci.rules' => -1637498246 ,
);

#  Color for the visualization of lattice points
# $Visual::Color::LatticePointColor='70 150 70';

#  Color for the visualization of non core points
# $Visual::Color::NonCorePointColor='0 131 204';

#  Color for the visualization of boundary lattice points
# $Visual::Color::BoundaryLatticePointColor='70 150 70';

#  edges of Del(Vor([[SITES]])): shabby blue
# $Visual::Color::IteratedDelaunayEdge='100 100 255';

#  vertices of the crust: white
# $Visual::Color::CrustVertex='255 255 255';

#  vertices of the Delaunay decomposition: filled white
# $Visual::Color::DelaunayVertex='255 255 255';

#  Color for the visualization of interior lattice points
# $Visual::Color::InteriorLatticePointColor='30 250 30';

#  vertices of the Delaunay decomposition: border black
# $Visual::Color::DelaunayVertexBorder='0 0 0';

#  edges of the Delaunay decomposition: shabby orange
# $Visual::Color::DelaunayEdge='255 192 128';

#  Color for the visualization of core points
# $Visual::Color::CorePointColor='236 101 0';

#  vertices of Vor(Vor([[SITES]])): grey
# $Visual::Color::IteratedVoronoiVertex='64 64 64';

#  edges of the crust: yellow
# $Visual::Color::CrustEdge='255 255 0';

#  distinguished color for MAX_FACE: red
# $Visual::Color::max='255 0 0';

#  distinguished color for MIN_FACE: yellow
# $Visual::Color::min='255 255 0';

#  Color for the non-vertices.
# $Visual::Color::non_vertices='255 255 0';

#  Steiner points are drawn in blue
# $Visual::Color::steiner_point='0 0 255';

#  In the spring embedding of the graph with a superposed linear objective function,
#  controls the relative force magnitude along the z-axis
# $Visual::PolytopeGraph::embedding_objective_factor=1;

#  Color of the facets on the Schlegel projection (RGB)
# $Visual::SchlegelDiagram::solid_color='0 0 255';

#  Color of the Schlegel projection facet (RGB)
# $Visual::SchlegelDiagram::proj_facet='0 0 0';

#  edge thickness for crust edges
# $Visual::Style::CrustEdge=0.333;

#  edge thickness between nearest neighbors
# $Visual::Style::NearestNeighbors=1;

#  edge thickness of Del([[SITES]])
# $Visual::Style::DelaunayEdge=1.5;

#  edge thickness of Del(Vor([[SITES]]))
# $Visual::Style::IteratedDelaunayEdge=1;

#  edge thickness of Vor([[SITES]])
# $Visual::Style::VoronoiEdge=1.5;

########################
package Polymake::graph;

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   'graphviz.rules' => '1637498246' ,
   'svg.rules' => '0#rule:common::svg.rules' ,
);

#  path to the neato program
ARCH('x86_64') and
$Graphviz::neato='neato';

#  path to the dot program
ARCH('x86_64') and
$Graphviz::dot='dot';

#  relative to arrowheadlength
# $Postscript::arrowheaddent=0.1;

#  for arrows in directed graphs and Gale diagrams
# $Postscript::arrowheadwidth=6;

#  for arrows in directed graphs and Gale diagrams
# $Postscript::arrowheadlength=14;

#  between the nodes of a face lattice (relative to the face label box width)
# $Postscript::face_spacing=0.2;

#  graph edges: black
# $Visual::Color::graph='0 0 0';

#  Tuning parameters for the graph embedder.
#  Almost all are multiplicative factors; the comments describe
#  the effect of INCREASING of the corresponding parameter.
# 
# %Visual::GraphEmbedding::graph_parameters=(
#  balance => 10 ,
#  inertion => 0.1 ,
#  'max-iterations' => 10000 ,
#  scale => 1 ,  # 
#  viscosity => 1 ,
# );

#  Additional tuning parameters for the interactive spring embedder.
# 
# %Visual::GraphEmbedding::interactive_parameters=(
#  eps => 0.0001 ,  # 
# );

#  roundness in y-coordinate of the label frame
# $X3d::roundness_y=0;

#  width of a glyph
# $X3d::glyph_width=0.68;

#  roundness in x-coordinate of the label frame
# $X3d::roundness_x=0;

#  between the nodes of a face lattice (relative to the face label box width)
# $X3d::face_spacing=0.2;

#  space between glyphs (regarding node numbers above 9)
# $X3d::glyph_seperator=0.4;

########################
package Polymake::topaz;

#  edge_weight => 1      # increases the ideal length of the mixed edges
# 
# %mixed_graph_params=(
# );

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
);

#  MIXED_GRAPH: black
# $Visual::Color::mixed_gr='0 0 0';

# undocumented
# $Visual::Color::morse_matching_dim_DIM='133 15 255';

#  GRAPH in mixed_graph : yellow
# $Visual::Color::primal_gr='255 255 0';

#  special TOPAZ red for an distinguished set of faces
# $Visual::Color::distinguished_face='231 0 74';

#  special TOPAZ blue for an distinguished subcomplex
# $Visual::Color::distinguished_subcomplex='147 178 255';

#  DUAL_GRAPH in mixed_graph: blue
# $Visual::Color::dual_gr='0 0 255';

#  arrows in MORSE_MATCHING
# $Visual::Color::morse_matching_dim_1='255 211 27';

#  GRAPH in topaz: black
# $Visual::Color::topaz_gr='0 0 0';

########################
package Polymake::group;

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
);

########################
package Polymake::ideal;

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
);

########################
package Polymake::fulton;

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   '_4ti2.rules' => '0#rule:polytope::_4ti2.rules' ,
);

########################
package Polymake::matroid;

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   '_4ti2.rules' => '0#rule:polytope::_4ti2.rules' ,
);

########################
package Polymake::tropical;

# undocumented
ARCH('x86_64') and
$gfan_tropicalbruteforce='gfan_tropicalbruteforce';

# undocumented
ARCH('x86_64') and
$gfan_homogenize='gfan_homogenize';

# Rulefiles with autoconfiguration sections and their exit codes.
# Value 0 denotes configuration failure, which disables the corresponding rulefile.
# 
ARCH('x86_64') and
%configured=(
   'gfan.rules' => '1637498246' ,
);

# undocumented
ARCH('x86_64') and
$gfan_tropicalintersection='gfan_tropicalintersection';

# undocumented
ARCH('x86_64') and
$gfan_tropicalhypersurface='gfan_tropicalhypersurface';

# undocumented
ARCH('x86_64') and
$gfan_tropicaltraverse='gfan_tropicaltraverse';

#  path to gfan
ARCH('x86_64') and
$gfan_buchberger='gfan_buchberger';

# undocumented
ARCH('x86_64') and
$gfan_tropicalstartingcone='gfan_tropicalstartingcone';

#  default color for the finite [[POINTS]] of a tropical polytope
# $Visual::Color::polytopegenerators='255 255 0';

