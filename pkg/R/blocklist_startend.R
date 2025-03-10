#' Merge blocks
#'
#' Function to merge/remove/modify blocks
#' @param blocklist block-dataset
#' @param type length measure (default: "window" , alt: "snp", "bp")
#' @param first_block First block to consider in the computation (default: 1)
#' @param internal Set to TRUE to now provide col/rownames for start/end points
#' @examples
#' data(blocklist_ex_maze)
#' blocklist_startend(blocklist_ex_maze)
#' @export
#' @return start/end points of haplotype blocks

blocklist_startend <- function(blocklist, type="snp", first_block=1, internal = FALSE){
  if(length(blocklist)==0){
    return(matrix(nrow=0, ncol=2))
  }
  be <- matrix(0, nrow=(length(blocklist)-first_block+1), ncol=2)
  for(index in 1:(length(blocklist)-first_block+1)){
    be[index,1] <- blocklist[[index+first_block-1]][[2]][[type]]
    be[index,2] <- blocklist[[index+first_block-1]][[3]][[type]]
  }
  if(!internal){
    colnames(be) <- c("start", "end")
    rownames(be) <- paste0("block ", 1:nrow(be))
  }

  return(be)
}
