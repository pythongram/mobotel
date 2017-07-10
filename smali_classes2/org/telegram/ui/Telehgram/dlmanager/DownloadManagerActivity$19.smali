.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;
.super Landroid/widget/FrameLayout;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1182
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1185
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1186
    .local v6, "bottom":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1187
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1188
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$19;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1189
    return-void
.end method
