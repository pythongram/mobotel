.class Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordDot"
.end annotation


# instance fields
.field private alpha:F

.field private dotDrawable:Landroid/graphics/drawable/Drawable;

.field private isIncr:Z

.field private lastUpdateTime:J

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 387
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 388
    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "chat_recordedVoiceDot"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x43c80000    # 400.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 402
    .local v0, "dt":J
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    if-nez v2, :cond_56

    .line 403
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    long-to-float v3, v0

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    .line 404
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_34

    .line 405
    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    .line 406
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    .line 415
    :cond_34
    :goto_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->lastUpdateTime:J

    .line 416
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 417
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->invalidate()V

    .line 418
    return-void

    .line 409
    :cond_56
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    long-to-float v3, v0

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    .line 410
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_34

    .line 411
    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    .line 412
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    goto :goto_34
.end method

.method public resetAlpha()V
    .registers 3

    .prologue
    .line 392
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->lastUpdateTime:J

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->invalidate()V

    .line 396
    return-void
.end method
