\name{deleteNodeAttribute}

\alias{deleteNodeAttribute}
\alias{deleteNodeAttribute,CytoscapeConnectionClass-method}

\title{deleteNodeAttribute}
\description{
Node and node attributes are usually added to a Cytoscape network by
defining them on the graph used to construct a CytoscapeWindow.
Once Cytoscape has been passed an attribute, however, it persists
until you exit the application or delete it by using the Cytoscape
graphical user interface or by calling this method.
}
\usage{
deleteNodeAttribute(obj, attribute.name)
}
\arguments{
  \item{obj}{a \code{CytoscapeConnectionClass} object or CytoscapeWindow
    object. }
  \item{attribute.name}{a \code{character string}, the name of the
    attribute you wish to delete.}
}

\value{
nothing
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
  getNodeAttributeNames
  addNodeAttribute
}

\examples{
  \dontrun{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  window.name = 'demo.deleteNodeAttribute'
  cw = CytoscapeWindow (window.name, graph=makeSimpleGraph ())
  displayGraph (cw)
  redraw (cw)
  layoutNetwork(cw)
  
    # before:
  print (getNodeAttributeNames (cw))
    # [1] "name"  "type"  "lfc"   "label" "count"
  deleteNodeAttribute (cw, 'count')
    # after:
  print (getNodeAttributeNames (cw))
    # [1] "name"  "type"  "lfc"   "label"

}

}
\keyword{graph}
