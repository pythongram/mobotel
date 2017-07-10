.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpecialSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

.field final synthetic val$span:Lorg/telegram/ui/Components/GroupCreateSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->removeView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->removingSpan:Landroid/view/View;
    invoke-static {v0, v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->access$902(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->access$702(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->animationStarted:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->access$802(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Z)Z

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$400(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(Z)V

    .line 293
    :cond_3d
    return-void
.end method
