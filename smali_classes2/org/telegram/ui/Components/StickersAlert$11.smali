.class Lorg/telegram/ui/Components/StickersAlert$11;
.super Landroid/widget/FrameLayout;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 410
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$11;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$11;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 417
    :goto_8
    return-void

    .line 416
    :cond_9
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_8
.end method
