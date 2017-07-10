.class Lorg/telegram/ui/PhotoViewer$35$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$35;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$35;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$35;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$35;

    .prologue
    .line 2204
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2207
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$35$1;->this$1:Lorg/telegram/ui/PhotoViewer$35;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2210
    :cond_20
    return-void
.end method
