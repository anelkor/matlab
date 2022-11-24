func input_img(){
var img
	img = read('path file image')
	show(img)

}
func unit_test(){
var img
	k = size(img)
	check assert(
		k(
			if(width == 384 and lenght == 384){
				print('PASS')
			else{
				print('NOT CORRECT')
			}	
		})
	)
}

func enhance(){
var img
var imgenhance
	imgenh = imadjust(img)
	show(imgenhance)
}

func clustering(){
var imgenhance
var imgcluster
	imgcluster = cluster_kmeans(imgenhance);
	show(imgcluster)
}

func erosion(){
var imgcluster 
var imgerosion
var resultlumen
	imgerosion = erode(imgcluster)
	resultlumen = imgerosion
	show(imgerosion)
}

func dilate(){
var imgcluster 
var imgdilate
var resultmedia
	imgdilate = erode(imgcluster)
	resultmedia = imgdilate
	show(imgdilate)
}

func blobLumen(){
var resultlumen
var bloblumen
	bloblumen = blobdetect(resultlumen)
	show(bloblumen)
}

func blobMedia(){
var resultmedia
var blobmedia
	blobMedia = blobdetect(resultmedia)
	show(blobmedia)
}

func findlargest(){
var bloblumen
var blobmedia
var findlumen
var findmedia
	findlumen = findlargest(bloblumen)
	findmedia = findlargest(blobmedia)
}

func plot(){
var findlumen
var findmedia	
var result
	result = xor(plot(findlumen),plot(findmedia))	
}

func compare(){
var result
	show(result.compare(result_from_groundtruth)
}