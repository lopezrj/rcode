loadpgtable <- function(db,table) {
  drv <- dbDriver('PostgreSQL')
  con <- dbConnect(drv, dbname=db)
  dframe <- dbReadTable(con,table)
  dbDisconnect(con)
  dbUnloadDriver(drv)
  return(dframe)
}
