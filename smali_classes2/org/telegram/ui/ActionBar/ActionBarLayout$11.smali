.class Lorg/telegram/ui/ActionBar/ActionBarLayout$11;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V
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
    .line 940
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_9

    .line 948
    :goto_8
    return-void

    .line 946
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$102(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1000(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V

    goto :goto_8
.end method
