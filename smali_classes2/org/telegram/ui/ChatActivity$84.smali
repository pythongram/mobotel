.class Lorg/telegram/ui/ChatActivity$84;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$checks:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;[Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 8621
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$84;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 8624
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 8625
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8626
    .local v1, "num":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v2, v2, v6

    if-nez v2, :cond_29

    move v2, v3

    :goto_1b
    aput-boolean v2, v4, v5

    .line 8627
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v2, v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 8628
    return-void

    .line 8626
    :cond_29
    const/4 v2, 0x0

    goto :goto_1b
.end method
