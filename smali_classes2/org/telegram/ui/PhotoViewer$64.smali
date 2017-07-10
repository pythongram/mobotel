.class Lorg/telegram/ui/PhotoViewer$64;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->openForPaint(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$z:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 6069
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$64;->val$z:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 6071
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$64;->val$z:Z

    if-eqz v0, :cond_a

    .line 6072
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x3

    # invokes: Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;I)V

    .line 6074
    :cond_a
    return-void
.end method
