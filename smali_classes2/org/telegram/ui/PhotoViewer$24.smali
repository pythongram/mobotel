.class Lorg/telegram/ui/PhotoViewer$24;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 1975
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$24;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1978
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$24;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$24;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->muteVideo:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    # setter for: Lorg/telegram/ui/PhotoViewer;->muteVideo:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/PhotoViewer;->access$8402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1979
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$24;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    .line 1980
    return-void

    .line 1978
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method
