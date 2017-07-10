.class Lorg/telegram/ui/LoginActivity$ProgressView;
.super Landroid/view/View;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:F

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 113
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->paint:Landroid/graphics/Paint;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->paint:Landroid/graphics/Paint;

    const-string v1, "login_progressInner"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    const-string v1, "login_progressOuter"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->progress:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 126
    .local v8, "start":I
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method public setProgress(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/LoginActivity$ProgressView;->progress:F

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$ProgressView;->invalidate()V

    .line 121
    return-void
.end method
