.class Lorg/telegram/ui/PhotoViewer$15;
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
    .line 1826
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1829
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$6800(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x2

    # invokes: Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$6900(Lorg/telegram/ui/PhotoViewer;I)V

    .line 1831
    return-void
.end method