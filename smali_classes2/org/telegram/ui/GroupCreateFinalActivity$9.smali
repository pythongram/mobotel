.class Lorg/telegram/ui/GroupCreateFinalActivity$9;
.super Ljava/lang/Object;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 536
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 10
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 539
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$800(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 540
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    if-ge v0, v2, :cond_25

    .line 541
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$800(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 542
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v3, :cond_22

    .line 543
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 540
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 546
    :cond_25
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1300(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v5

    const/4 v6, 0x5

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_53

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_46
    invoke-virtual {v5, v6, v3, v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 547
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$9;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1400(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 548
    return-void

    :cond_53
    move-object v3, v4

    .line 546
    goto :goto_46
.end method
