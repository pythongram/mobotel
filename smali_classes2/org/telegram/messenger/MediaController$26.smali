.class Lorg/telegram/messenger/MediaController$26;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 4217
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 33

    .prologue
    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v28

    if-eqz v28, :cond_3ac

    .line 4220
    sget-object v28, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v29, "mainconfig"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 4221
    .local v21, "preferences":Landroid/content/SharedPreferences;
    new-instance v11, Lde/jurihock/voicesmith/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Lde/jurihock/voicesmith/DataHelper;-><init>(Landroid/media/AudioRecord;)V

    .line 4222
    .local v11, "dataHelper":Lde/jurihock/voicesmith/DataHelper;
    const/16 v23, 0x0

    .line 4223
    .local v23, "sArr":[S
    :cond_29
    if-nez v23, :cond_9d

    .line 4224
    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v11, Lde/jurihock/voicesmith/DataHelper;->b:Z

    .line 4225
    const-string v28, "voice_changer_type"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d7

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7100(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->processFrame([FLde/jurihock/voicesmith/DataHelper;)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lde/jurihock/voicesmith/dsp/processors/RobotizeProcessor;->processFrame([F)V

    .line 4228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7200(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->processFrame([F)[S

    move-result-object v23

    .line 4244
    :cond_87
    :goto_87
    if-nez v23, :cond_29

    iget v0, v11, Lde/jurihock/voicesmith/DataHelper;->a:I

    move/from16 v28, v0

    if-gez v28, :cond_29

    iget-boolean v0, v11, Lde/jurihock/voicesmith/DataHelper;->b:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    .line 4245
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [S

    move-object/from16 v23, v0

    .line 4249
    :cond_9d
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 4250
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4251
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4252
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4253
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_c7
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_221

    aget-short v22, v23, v28

    .line 4254
    .local v22, "putShort":S
    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4253
    add-int/lit8 v28, v28, 0x1

    goto :goto_c7

    .line 4229
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v22    # "putShort":S
    :cond_d7
    const-string v28, "voice_changer_type"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12f

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7100(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->processFrame([FLde/jurihock/voicesmith/DataHelper;)V

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lde/jurihock/voicesmith/dsp/processors/DetuneProcessor;->processFrame([F)V

    .line 4232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7200(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->processFrame([F)[S

    move-result-object v23

    goto/16 :goto_87

    .line 4233
    :cond_12f
    const-string v28, "voice_changer_type"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_187

    .line 4234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7100(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->processFrame([FLde/jurihock/voicesmith/DataHelper;)V

    .line 4235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lde/jurihock/voicesmith/dsp/processors/HoarsenessProcessor;->processFrame([F)V

    .line 4236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7200(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7000(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->processFrame([F)[S

    move-result-object v23

    goto/16 :goto_87

    .line 4237
    :cond_187
    const-string v28, "voice_changer_type"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_87

    .line 4238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7100(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7300(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->processFrame([FLde/jurihock/voicesmith/DataHelper;)V

    .line 4239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7400(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7300(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;->processFrame([F)V

    .line 4240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7500(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/KissFFT;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7300(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lde/jurihock/voicesmith/dsp/KissFFT;->ifft([F)V

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7700(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7300(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/MediaController;->access$7600(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;->processFrame([F[F)V

    .line 4242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$7200(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$7600(Lorg/telegram/messenger/MediaController;)[F

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->processFrame([F)[S

    move-result-object v23

    goto/16 :goto_87

    .line 4256
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    :cond_221
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4257
    iget v0, v11, Lde/jurihock/voicesmith/DataHelper;->a:I

    move/from16 v28, v0

    mul-int/lit8 v5, v28, 0x2

    .line 4258
    .local v5, "b":I
    iget v0, v11, Lde/jurihock/voicesmith/DataHelper;->a:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_241

    .line 4259
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    mul-int/lit8 v5, v28, 0x2

    .line 4261
    :cond_241
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 4262
    .local v15, "len":I
    if-lez v15, :cond_3b9

    .line 4263
    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4264
    const-wide/16 v26, 0x0

    .line 4266
    .local v26, "sum":D
    :try_start_255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v28

    div-int/lit8 v30, v15, 0x2

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v18, v28, v30

    .line 4267
    .local v18, "newSamplesCount":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v10, v0

    .line 4268
    .local v10, "currentPart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    sub-int v16, v28, v10

    .line 4270
    .local v16, "newPart":I
    if-eqz v10, :cond_2e7

    .line 4271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v10

    move/from16 v29, v0

    div-float v24, v28, v29

    .line 4272
    .local v24, "sampleStep":F
    const/4 v9, 0x0

    .line 4273
    .local v9, "currentNum":F
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2c5
    if-ge v4, v10, :cond_2e7

    .line 4274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v29

    float-to-int v0, v9

    move/from16 v30, v0

    aget-short v29, v29, v30

    aput-short v29, v28, v4

    .line 4275
    add-float v9, v9, v24

    .line 4273
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c5

    .line 4278
    .end local v4    # "a":I
    .end local v9    # "currentNum":F
    .end local v24    # "sampleStep":F
    :cond_2e7
    move v9, v10

    .line 4279
    .local v9, "currentNum":I
    const/16 v17, 0x0

    .line 4280
    .local v17, "nextNum":F
    int-to-float v0, v15

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v24, v28, v29

    .line 4281
    .restart local v24    # "sampleStep":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2f9
    div-int/lit8 v28, v15, 0x2

    move/from16 v0, v28

    if-ge v14, v0, :cond_343

    .line 4282
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v20

    .line 4283
    .local v20, "peak":S
    const/16 v28, 0x9c4

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_314

    .line 4284
    mul-int v28, v20, v20

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    .line 4286
    :cond_314
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v14, v0, :cond_340

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_340

    .line 4287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v28

    aput-short v20, v28, v9

    .line 4288
    add-float v17, v17, v24

    .line 4289
    add-int/lit8 v9, v9, 0x1

    .line 4281
    :cond_340
    add-int/lit8 v14, v14, 0x1

    goto :goto_2f9

    .line 4292
    .end local v20    # "peak":S
    :cond_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->access$302(Lorg/telegram/messenger/MediaController;J)J
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_350} :catch_3ad

    .line 4296
    .end local v9    # "currentNum":I
    .end local v10    # "currentPart":I
    .end local v14    # "i":I
    .end local v16    # "newPart":I
    .end local v17    # "nextNum":F
    .end local v18    # "newSamplesCount":J
    .end local v24    # "sampleStep":F
    :goto_350
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4297
    int-to-double v0, v15

    move-wide/from16 v28, v0

    div-double v28, v26, v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 4298
    .local v6, "amplitude":D
    move-object v13, v8

    .line 4299
    .local v13, "finalBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v28

    move/from16 v0, v28

    if-eq v15, v0, :cond_3b6

    const/16 v25, 0x1

    .line 4300
    .local v25, "z":Z
    :goto_36f
    if-eqz v15, :cond_389

    .line 4301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v28

    new-instance v29, Lorg/telegram/messenger/MediaController$26$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v13, v2}, Lorg/telegram/messenger/MediaController$26$1;-><init>(Lorg/telegram/messenger/MediaController$26;Ljava/nio/ByteBuffer;Z)V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4325
    :cond_389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$5800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4326
    new-instance v28, Lorg/telegram/messenger/MediaController$26$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7}, Lorg/telegram/messenger/MediaController$26$2;-><init>(Lorg/telegram/messenger/MediaController$26;D)V

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4335
    .end local v5    # "b":I
    .end local v6    # "amplitude":D
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "dataHelper":Lde/jurihock/voicesmith/DataHelper;
    .end local v13    # "finalBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "len":I
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v23    # "sArr":[S
    .end local v25    # "z":Z
    .end local v26    # "sum":D
    :cond_3ac
    :goto_3ac
    return-void

    .line 4293
    .restart local v5    # "b":I
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "dataHelper":Lde/jurihock/voicesmith/DataHelper;
    .restart local v15    # "len":I
    .restart local v21    # "preferences":Landroid/content/SharedPreferences;
    .restart local v23    # "sArr":[S
    .restart local v26    # "sum":D
    :catch_3ad
    move-exception v12

    .line 4294
    .local v12, "e":Ljava/lang/Exception;
    const-string v28, "tmessages"

    move-object/from16 v0, v28

    invoke-static {v0, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_350

    .line 4299
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v6    # "amplitude":D
    .restart local v13    # "finalBuffer":Ljava/nio/ByteBuffer;
    :cond_3b6
    const/16 v25, 0x0

    goto :goto_36f

    .line 4333
    .end local v6    # "amplitude":D
    .end local v13    # "finalBuffer":Ljava/nio/ByteBuffer;
    .end local v26    # "sum":D
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->access$1200(Lorg/telegram/messenger/MediaController;)I

    move-result v29

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/MediaController;->access$1300(Lorg/telegram/messenger/MediaController;I)V

    goto :goto_3ac
.end method
