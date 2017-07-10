.class final Lorg/telegram/messenger/MediaController$22;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelled:[Z

.field final synthetic val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sourceFile:Ljava/io/File;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/io/File;[ZLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2935
    iput p1, p0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$22;->val$sourceFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$22;->val$cancelled:[Z

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController$22;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 2940
    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    if-nez v7, :cond_9d

    .line 2941
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v15

    .line 2969
    .local v15, "destFile":Ljava/io/File;
    :cond_a
    :goto_a
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_13

    .line 2970
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 2972
    :cond_13
    const/4 v3, 0x0

    .line 2973
    .local v3, "source":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 2974
    .local v2, "destination":Ljava/nio/channels/FileChannel;
    const/16 v23, 0x1

    .line 2975
    .local v23, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b1

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long v20, v8, v10

    .line 2977
    .local v20, "lastProgress":J
    :try_start_1f
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$22;->val$sourceFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 2978
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 2979
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v24

    .line 2980
    .local v24, "size":J
    const-wide/16 v4, 0x0

    .local v4, "a":J
    :goto_3b
    cmp-long v7, v4, v24

    if-gez v7, :cond_48

    .line 2981
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$cancelled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_190
    .catchall {:try_start_1f .. :try_end_46} :catchall_1a5

    if-eqz v7, :cond_154

    .line 3007
    :cond_48
    if-eqz v3, :cond_4d

    .line 3008
    :try_start_4a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_1c0

    .line 3014
    :cond_4d
    :goto_4d
    if-eqz v2, :cond_52

    .line 3015
    :try_start_4f
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_1c3

    .line 3021
    .end local v4    # "a":J
    .end local v24    # "size":J
    :cond_52
    :goto_52
    :try_start_52
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$cancelled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_60

    .line 3022
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 3023
    const/16 v23, 0x0

    .line 3026
    :cond_60
    if-eqz v23, :cond_8c

    .line 3027
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1b7

    .line 3028
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "download"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/DownloadManager;

    .line 3029
    .local v6, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$22;->val$mime:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v14}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_8c} :catch_1b1

    .line 3037
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v6    # "downloadManager":Landroid/app/DownloadManager;
    .end local v15    # "destFile":Ljava/io/File;
    .end local v20    # "lastProgress":J
    .end local v23    # "result":Z
    :cond_8c
    :goto_8c
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v7, :cond_9c

    .line 3038
    new-instance v7, Lorg/telegram/messenger/MediaController$22$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/telegram/messenger/MediaController$22$2;-><init>(Lorg/telegram/messenger/MediaController$22;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3049
    :cond_9c
    return-void

    .line 2942
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_aa

    .line 2943
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v15

    .restart local v15    # "destFile":Ljava/io/File;
    goto/16 :goto_a

    .line 2946
    .end local v15    # "destFile":Ljava/io/File;
    :cond_aa
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_129

    .line 2947
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 2951
    .local v16, "dir":Ljava/io/File;
    :goto_b7
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 2952
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2953
    .restart local v15    # "destFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2954
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 2955
    .local v18, "idx":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_d6
    const/16 v7, 0xa

    if-ge v4, v7, :cond_a

    .line 2957
    const/4 v7, -0x1

    move/from16 v0, v18

    if-eq v0, v7, :cond_130

    .line 2958
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    const/4 v9, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2962
    .local v19, "newName":Ljava/lang/String;
    :goto_117
    new-instance v15, Ljava/io/File;

    .end local v15    # "destFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2963
    .restart local v15    # "destFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2955
    add-int/lit8 v4, v4, 0x1

    goto :goto_d6

    .line 2949
    .end local v4    # "a":I
    .end local v15    # "destFile":Ljava/io/File;
    .end local v16    # "dir":Ljava/io/File;
    .end local v18    # "idx":I
    .end local v19    # "newName":Ljava/lang/String;
    :cond_129
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .restart local v16    # "dir":Ljava/io/File;
    goto :goto_b7

    .line 2960
    .restart local v4    # "a":I
    .restart local v15    # "destFile":Ljava/io/File;
    .restart local v18    # "idx":I
    :cond_130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_152} :catch_1b1

    move-result-object v19

    .restart local v19    # "newName":Ljava/lang/String;
    goto :goto_117

    .line 2984
    .end local v16    # "dir":Ljava/io/File;
    .end local v18    # "idx":I
    .end local v19    # "newName":Ljava/lang/String;
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .local v4, "a":J
    .restart local v20    # "lastProgress":J
    .restart local v23    # "result":Z
    .restart local v24    # "size":J
    :cond_154
    const-wide/16 v8, 0x1000

    sub-long v10, v24, v4

    :try_start_158
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 2985
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v7, :cond_18b

    .line 2986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v7, v20, v8

    if-gtz v7, :cond_18b

    .line 2987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2988
    long-to-float v7, v4

    move-wide/from16 v0, v24

    long-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v22, v0

    .line 2989
    .local v22, "progress":I
    new-instance v7, Lorg/telegram/messenger/MediaController$22$1;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lorg/telegram/messenger/MediaController$22$1;-><init>(Lorg/telegram/messenger/MediaController$22;I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_18b} :catch_190
    .catchall {:try_start_158 .. :try_end_18b} :catchall_1a5

    .line 2980
    .end local v22    # "progress":I
    :cond_18b
    const-wide/16 v8, 0x1000

    add-long/2addr v4, v8

    goto/16 :goto_3b

    .line 3002
    .end local v4    # "a":J
    .end local v24    # "size":J
    :catch_190
    move-exception v17

    .line 3003
    .local v17, "e":Ljava/lang/Exception;
    :try_start_191
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_194
    .catchall {:try_start_191 .. :try_end_194} :catchall_1a5

    .line 3004
    const/16 v23, 0x0

    .line 3007
    if-eqz v3, :cond_19b

    .line 3008
    :try_start_198
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19b} :catch_1c6

    .line 3014
    :cond_19b
    :goto_19b
    if-eqz v2, :cond_52

    .line 3015
    :try_start_19d
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a0} :catch_1a2

    goto/16 :goto_52

    .line 3017
    :catch_1a2
    move-exception v7

    goto/16 :goto_52

    .line 3006
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_1a5
    move-exception v7

    .line 3007
    if-eqz v3, :cond_1ab

    .line 3008
    :try_start_1a8
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1ab} :catch_1c8

    .line 3014
    :cond_1ab
    :goto_1ab
    if-eqz v2, :cond_1b0

    .line 3015
    :try_start_1ad
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b0} :catch_1ca

    .line 3019
    :cond_1b0
    :goto_1b0
    :try_start_1b0
    throw v7
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b1} :catch_1b1

    .line 3034
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v15    # "destFile":Ljava/io/File;
    .end local v20    # "lastProgress":J
    .end local v23    # "result":Z
    :catch_1b1
    move-exception v17

    .line 3035
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8c

    .line 3031
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v15    # "destFile":Ljava/io/File;
    .restart local v20    # "lastProgress":J
    .restart local v23    # "result":Z
    :cond_1b7
    :try_start_1b7
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1be} :catch_1b1

    goto/16 :goto_8c

    .line 3010
    .restart local v4    # "a":J
    .restart local v24    # "size":J
    :catch_1c0
    move-exception v7

    goto/16 :goto_4d

    .line 3017
    :catch_1c3
    move-exception v7

    goto/16 :goto_52

    .line 3010
    .end local v4    # "a":J
    .end local v24    # "size":J
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_1c6
    move-exception v7

    goto :goto_19b

    .end local v17    # "e":Ljava/lang/Exception;
    :catch_1c8
    move-exception v8

    goto :goto_1ab

    .line 3017
    :catch_1ca
    move-exception v8

    goto :goto_1b0
.end method
