.class Lorg/telegram/ui/Components/PhotoPaintView$11;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 425
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 426
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_9

    .line 427
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 429
    :cond_9
    return-void
.end method
