import tensorflow as tf
import glob
import os
files =  glob.glob("/scratch/eecs542w17_fluxg/boyaolin/data/yt8m_frame_level/train/trainID.tfrecord") 

filesSize = len(files)
cnt = 0 

for filename in files:
    cnt = cnt + 1
    print('checking %d/%d %s' % (cnt, filesSize, filename))
    try:
        for example in tf.python_io.tf_record_iterator(filename): 

            tf_example = tf.train.Example.FromString(example) 

    except :
        print("removing %s" % filename)
        os.remove(filename)
