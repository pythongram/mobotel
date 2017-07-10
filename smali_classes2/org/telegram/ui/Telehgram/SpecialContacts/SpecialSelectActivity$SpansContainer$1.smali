.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpecialSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    .prologue
    .line 252
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->addingSpan:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->access$602(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->access$702(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->animationStarted:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->access$802(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;Z)Z

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 259
    return-void
.end method
