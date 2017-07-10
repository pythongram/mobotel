.class Lorg/telegram/ui/CacheControlActivity$2;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$2;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 193
    const/4 v8, 0x0

    .line 194
    .local v8, "imagesCleared":Z
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    const/4 v12, 0x6

    if-ge v2, v12, :cond_13d

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->clear:[Z
    invoke-static {v12}, Lorg/telegram/ui/CacheControlActivity;->access$1100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v12

    aget-boolean v12, v12, v2

    if-nez v12, :cond_14

    .line 194
    :cond_11
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 198
    :cond_14
    const/4 v11, -0x1

    .line 199
    .local v11, "type":I
    const/4 v5, 0x0

    .line 200
    .local v5, "documentsMusicType":I
    if-nez v2, :cond_56

    .line 201
    const/4 v11, 0x0

    .line 215
    :cond_19
    :goto_19
    const/4 v12, -0x1

    if-eq v11, v12, :cond_11

    .line 218
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v7

    .line 219
    .local v7, "file":Ljava/io/File;
    if-eqz v7, :cond_8e

    .line 221
    :try_start_26
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 222
    .local v3, "array":[Ljava/io/File;
    if-eqz v3, :cond_8e

    .line 223
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_2d
    array-length v12, v3

    if-ge v4, v12, :cond_8e

    .line 224
    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "name":Ljava/lang/String;
    const/4 v12, 0x1

    if-eq v5, v12, :cond_40

    const/4 v12, 0x2

    if-ne v5, v12, :cond_74

    .line 226
    :cond_40
    const-string v12, ".mp3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_50

    const-string v12, ".m4a"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_71

    .line 227
    :cond_50
    const/4 v12, 0x1

    if-ne v5, v12, :cond_74

    .line 223
    :cond_53
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 202
    .end local v3    # "array":[Ljava/io/File;
    .end local v4    # "b":I
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "name":Ljava/lang/String;
    :cond_56
    const/4 v12, 0x1

    if-ne v2, v12, :cond_5b

    .line 203
    const/4 v11, 0x2

    goto :goto_19

    .line 204
    :cond_5b
    const/4 v12, 0x2

    if-ne v2, v12, :cond_61

    .line 205
    const/4 v11, 0x3

    .line 206
    const/4 v5, 0x1

    goto :goto_19

    .line 207
    :cond_61
    const/4 v12, 0x3

    if-ne v2, v12, :cond_67

    .line 208
    const/4 v11, 0x3

    .line 209
    const/4 v5, 0x2

    goto :goto_19

    .line 210
    :cond_67
    const/4 v12, 0x4

    if-ne v2, v12, :cond_6c

    .line 211
    const/4 v11, 0x1

    goto :goto_19

    .line 212
    :cond_6c
    const/4 v12, 0x5

    if-ne v2, v12, :cond_19

    .line 213
    const/4 v11, 0x4

    goto :goto_19

    .line 230
    .restart local v3    # "array":[Ljava/io/File;
    .restart local v4    # "b":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_71
    const/4 v12, 0x2

    if-eq v5, v12, :cond_53

    .line 234
    :cond_74
    const-string v12, ".nomedia"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_53

    .line 237
    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_53

    .line 238
    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_89} :catch_8a

    goto :goto_53

    .line 242
    .end local v3    # "array":[Ljava/io/File;
    .end local v4    # "b":I
    .end local v10    # "name":Ljava/lang/String;
    :catch_8a
    move-exception v6

    .line 243
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 246
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_8e
    const/4 v12, 0x4

    if-ne v11, v12, :cond_ac

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    # setter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$002(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 248
    const/4 v8, 0x1

    goto/16 :goto_11

    .line 249
    :cond_ac
    const/4 v12, 0x1

    if-ne v11, v12, :cond_c9

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    # setter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$702(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_11

    .line 251
    :cond_c9
    const/4 v12, 0x3

    if-ne v11, v12, :cond_103

    .line 252
    const/4 v12, 0x1

    if-ne v5, v12, :cond_e9

    .line 253
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    # setter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$502(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_11

    .line 255
    :cond_e9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    # setter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$602(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_11

    .line 257
    :cond_103
    if-nez v11, :cond_120

    .line 258
    const/4 v8, 0x1

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    # setter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$302(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_11

    .line 260
    :cond_120
    const/4 v12, 0x2

    if-ne v11, v12, :cond_11

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v13, v14, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v14

    # setter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$402(Lorg/telegram/ui/CacheControlActivity;J)J

    goto/16 :goto_11

    .line 264
    .end local v5    # "documentsMusicType":I
    .end local v7    # "file":Ljava/io/File;
    .end local v11    # "type":I
    :cond_13d
    move v9, v8

    .line 265
    .local v9, "imagesClearedFinal":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v13}, Lorg/telegram/ui/CacheControlActivity;->access$600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v16

    add-long v14, v14, v16

    # setter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/CacheControlActivity;->access$802(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 266
    new-instance v12, Lorg/telegram/ui/CacheControlActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/CacheControlActivity$2$1;-><init>(Lorg/telegram/ui/CacheControlActivity$2;Z)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method
