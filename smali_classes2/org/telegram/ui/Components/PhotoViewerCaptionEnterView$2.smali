.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;
.super Landroid/widget/EditText;
.source "PhotoViewerCaptionEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 121
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 126
    :goto_3
    return-void

    .line 122
    :catch_4
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->setMeasuredDimension(II)V

    .line 124
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
