.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;
.super Ljava/lang/Object;
.source "SpecialSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    .prologue
    .line 510
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 513
    const/16 v0, 0x43

    if-ne p2, v0, :cond_50

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_50

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$400(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->spansContainer:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1600(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$400(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$400(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->updateHint()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1700(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$7;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # invokes: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->checkVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1800(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)V

    move v0, v1

    .line 519
    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method
