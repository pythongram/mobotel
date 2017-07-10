.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$4;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SpecialSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 444
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$4;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$4;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1500(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$4;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1500(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$4;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1502(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 451
    :cond_17
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
