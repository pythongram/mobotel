.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->prepareStyle1Animation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

.field final synthetic val$indeterminateAnimation:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;Landroid/animation/Animator;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;->val$indeterminateAnimation:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;->val$indeterminateAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->setIndeterminate(Z)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->setProgress(F)V

    .line 317
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->setIndeterminate(Z)V

    .line 309
    return-void
.end method
