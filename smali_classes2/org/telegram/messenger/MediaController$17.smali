.class Lorg/telegram/messenger/MediaController$17;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$dialog_id:J

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2659
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaController$17;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$17;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2662
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2663
    new-instance v0, Lorg/telegram/messenger/MediaController$17$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$1;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2764
    :goto_13
    return-void

    .line 2673
    :cond_14
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2674
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 2675
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    int-to-long v4, v1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 2676
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->user_id:I

    .line 2677
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    const-string v1, "audio/ogg"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 2678
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2679
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v1, "s"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2680
    sget v0, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 2681
    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2683
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;

    .line 2686
    :try_start_88
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5300(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d9

    .line 2687
    new-instance v0, Lorg/telegram/messenger/MediaController$17$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$2;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a2} :catch_a4

    goto/16 :goto_13

    .line 2725
    :catch_a4
    move-exception v6

    .line 2726
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2727
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v13}, Lorg/telegram/messenger/MediaController;->access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2728
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5600(Lorg/telegram/messenger/MediaController;)V

    .line 2729
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2730
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v13}, Lorg/telegram/messenger/MediaController;->access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;

    .line 2732
    :try_start_c0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 2733
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cf} :catch_17e

    .line 2738
    :goto_cf
    new-instance v0, Lorg/telegram/messenger/MediaController$17$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$3;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_13

    .line 2698
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d9
    const/16 v2, 0x3e80

    .line 2699
    .local v2, "rate":I
    :try_start_db
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2700
    .local v8, "telehPreferences":Landroid/content/SharedPreferences;
    const-string v0, "voice_changer_type"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_f7

    .line 2701
    const-string v0, "voice_speed"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_19a

    .line 2716
    :cond_f7
    :goto_f7
    iget-object v10, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-static {v10, v0}, Lorg/telegram/messenger/MediaController;->access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 2717
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/MediaController;->access$1102(Lorg/telegram/messenger/MediaController;J)J

    .line 2718
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/MediaController;->access$702(Lorg/telegram/messenger/MediaController;J)J

    .line 2719
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/MediaController;->access$302(Lorg/telegram/messenger/MediaController;J)J

    .line 2720
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iget-wide v4, p0, Lorg/telegram/messenger/MediaController$17;->val$dialog_id:J

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/MediaController;->access$5402(Lorg/telegram/messenger/MediaController;J)J

    .line 2721
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 2722
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2724
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_144} :catch_a4

    .line 2749
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2750
    const-string v0, "voice_changer_type"

    invoke-interface {v8, v0, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2751
    .local v9, "vType":I
    if-eqz v9, :cond_156

    if-ne v9, v12, :cond_184

    .line 2752
    :cond_156
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2757
    :goto_165
    new-instance v0, Lorg/telegram/messenger/MediaController$17$4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$4;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_13

    .line 2703
    .end local v9    # "vType":I
    :pswitch_16f
    const v2, 0xac44

    .line 2704
    goto :goto_f7

    .line 2706
    :pswitch_173
    const/16 v2, 0x5622

    .line 2707
    goto :goto_f7

    .line 2709
    :pswitch_176
    const/16 v2, 0x2b11

    .line 2710
    goto/16 :goto_f7

    .line 2712
    :pswitch_17a
    const/16 v2, 0x1f40

    goto/16 :goto_f7

    .line 2734
    .end local v2    # "rate":I
    .end local v8    # "telehPreferences":Landroid/content/SharedPreferences;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_17e
    move-exception v7

    .line 2735
    .local v7, "e2":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_cf

    .line 2754
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e2":Ljava/lang/Exception;
    .restart local v2    # "rate":I
    .restart local v8    # "telehPreferences":Landroid/content/SharedPreferences;
    .restart local v9    # "vType":I
    :cond_184
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v9}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;I)V

    .line 2755
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_165

    .line 2701
    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_16f
        :pswitch_173
        :pswitch_176
        :pswitch_17a
    .end packed-switch
.end method
