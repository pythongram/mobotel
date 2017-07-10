.class Lorg/telegram/ui/ActionBar/ActionBarLayout$8;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 777
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_a

    .line 785
    :goto_9
    return-void

    .line 783
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1402(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V
    invoke-static {v0, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1000(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V

    goto :goto_9
.end method
