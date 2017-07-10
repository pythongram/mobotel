.class Lorg/telegram/ui/Components/AnimatedFileDrawable$3;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 131
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    if-nez v1, :cond_37

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;
    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Ljava/lang/String;[I)I

    move-result v2

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$302(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    .line 136
    :cond_37
    :try_start_37
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_bd

    move-result-object v1

    if-nez v1, :cond_88

    .line 138
    :try_start_3f
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_5c} :catch_b8

    .line 142
    :goto_5c
    :try_start_5c
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;

    move-result-object v1

    if-nez v1, :cond_88

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    if-eqz v1, :cond_88

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1002(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 146
    :cond_88
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2002(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I
    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(ILandroid/graphics/Bitmap;[I)I
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2100(ILandroid/graphics/Bitmap;[I)I
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_ae} :catch_bd

    .line 155
    :cond_ae
    :goto_ae
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 156
    return-void

    .line 139
    :catch_b8
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_b9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_5c

    .line 151
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_bd
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_ae
.end method
