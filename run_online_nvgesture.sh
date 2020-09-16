#!/bin/bash

# "$1" classıfıer resume path
# "$2" model_clf
# "$3" width_mult
# "$4" classıfıer modalıty
python online_test.py \
	--root_path C:/Users/Arrow/PycharmProjects/Real-time-GesRec\
	--video_path D:/study/毕设/数据集/nvGesture/nvGesture_v1/ \
	--annotation_path annotation_nvGesture_test/nvall.json \
	--resume_path_det C:/Users/Arrow/Desktop/毕设/模型/shared_models_v1/models/nv_resnetl_10_Depth_8.pth \
	--resume_path_clf C:/Users/Arrow/Desktop/毕设/模型/shared_models_v1/models/nv_resnext_101_Depth_32.pth  \
	--result_path results_test \
	--dataset nvgesture    \
	--sample_duration_det 8 \
	--sample_duration_clf 32 \
	--model_det resnetl \
	--model_clf resnext\
	--model_depth_det 10 \
    --model_depth_clf 101 \
	--width_mult_det 0.5 \
	--width_mult_clf 1.0 \
	--resnet_shortcut_det A \
	--resnet_shortcut_clf B \
	--batch_size 1 \
	--n_classes_det 2 \
	--n_finetune_classes_det 2 \
	--n_classes_clf 25 \
	--n_finetune_classes_clf 25 \
	--n_threads 16 \
	--checkpoint 1 \
	--modality_det Depth \
	--modality_clf Depth \
	--n_val_samples 1 \
	--train_crop random \
	--test_subset test  \
	--det_strategy median \
	--det_queue_size 4 \
	--det_counter 2 \
	--clf_strategy median \
	--clf_queue_size 16 \
	--clf_threshold_pre 1.0 \
	--clf_threshold_final 0.15 \
	--stride_len 1 \
    --no_cuda \