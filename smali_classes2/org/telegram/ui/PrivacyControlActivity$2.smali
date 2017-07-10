.class Lorg/telegram/ui/PrivacyControlActivity$2;
.super Ljava/lang/Object;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 180
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eq p2, v4, :cond_1a

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eq p2, v4, :cond_1a

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_6a

    .line 181
    :cond_1a
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    .line 182
    .local v3, "newType":I
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_32

    .line 183
    const/4 v3, 0x1

    .line 189
    :cond_29
    :goto_29
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne v3, v4, :cond_46

    .line 256
    .end local v3    # "newType":I
    :cond_31
    :goto_31
    return-void

    .line 184
    .restart local v3    # "newType":I
    :cond_32
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_3c

    .line 185
    const/4 v3, 0x0

    goto :goto_29

    .line 186
    :cond_3c
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_29

    .line 187
    const/4 v3, 0x2

    goto :goto_29

    .line 192
    :cond_46
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$602(Lorg/telegram/ui/PrivacyControlActivity;Z)Z

    .line 193
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v5

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v4, v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 195
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v4, v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$002(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 196
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # invokes: Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$900(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto :goto_31

    .line 197
    .end local v3    # "newType":I
    :cond_6a
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eq p2, v4, :cond_7a

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_31

    .line 199
    :cond_7a
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_c2

    .line 200
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_88
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "args":Landroid/os/Bundle;
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p2, v4, :cond_c9

    const-string v4, "isNeverShare"

    :goto_9d
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string v7, "isGroup"

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eqz v4, :cond_cc

    move v4, v5

    :goto_ab
    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    new-instance v2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 209
    .local v2, "fragment":Lorg/telegram/ui/GroupCreateActivity;
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2$1;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$2$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    .line 228
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_31

    .line 202
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "fragment":Lorg/telegram/ui/GroupCreateActivity;
    :cond_c2
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_88

    .line 206
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_c9
    const-string v4, "isAlwaysShare"

    goto :goto_9d

    :cond_cc
    move v4, v6

    .line 207
    goto :goto_ab

    .line 230
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_ce
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-eqz v4, :cond_f3

    move v4, v5

    :goto_d9
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_f5

    :goto_e1
    invoke-direct {v2, v1, v4, v5}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 231
    .local v2, "fragment":Lorg/telegram/ui/PrivacyUsersActivity;
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2$2;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$2$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/PrivacyUsersActivity;->setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V

    .line 253
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_31

    .end local v2    # "fragment":Lorg/telegram/ui/PrivacyUsersActivity;
    :cond_f3
    move v4, v6

    .line 230
    goto :goto_d9

    :cond_f5
    move v5, v6

    goto :goto_e1
.end method
