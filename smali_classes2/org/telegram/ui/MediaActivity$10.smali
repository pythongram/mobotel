.class Lorg/telegram/ui/MediaActivity$10;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;

.field final synthetic val$a:I

.field final synthetic val$item:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 1214
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$10;->val$item:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    iput p4, p0, Lorg/telegram/ui/MediaActivity$10;->val$a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1217
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1218
    .local v3, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v8, "AppName"

    const v9, 0x7f070092

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1219
    packed-switch p2, :pswitch_data_17a

    .line 1263
    :goto_1a
    return-void

    .line 1221
    :pswitch_1b
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1222
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$item:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-nez v8, :cond_bc

    const/4 v8, 0x0

    :goto_3f
    aget-object v8, v9, v8

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity$10;->val$item:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/MediaActivity$10;->val$item:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$item:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 1224
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # operator++ for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$708(Lorg/telegram/ui/MediaActivity;)I

    .line 1226
    :cond_5e
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$3700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$700(Lorg/telegram/ui/MediaActivity;)I

    move-result v8

    if-nez v8, :cond_be

    const/4 v8, 0x0

    :goto_76
    invoke-virtual {v9, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1227
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$3800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 1228
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1229
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8f
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$3900(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_c1

    .line 1231
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$3900(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1232
    .local v7, "view2":Landroid/view/View;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1233
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_182

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 1222
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v6    # "i":I
    .end local v7    # "view2":Landroid/view/View;
    :cond_bc
    const/4 v8, 0x1

    goto :goto_3f

    .line 1226
    :cond_be
    const/16 v8, 0x8

    goto :goto_76

    .line 1235
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v6    # "i":I
    :cond_c1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1236
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1237
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1238
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/MediaActivity;->access$2902(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 1240
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$4100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->showAddToDownload()Z
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$4000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v8

    if-eqz v8, :cond_108

    const/4 v8, 0x0

    :goto_eb
    invoke-virtual {v9, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1241
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v8, :cond_10b

    .line 1242
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 1248
    :cond_fd
    :goto_fd
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$4200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    goto/16 :goto_1a

    .line 1240
    :cond_108
    const/16 v8, 0x8

    goto :goto_eb

    .line 1243
    :cond_10b
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v8, :cond_11d

    .line 1244
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget v9, p0, Lorg/telegram/ui/MediaActivity$10;->val$a:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_fd

    .line 1245
    :cond_11d
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v8, :cond_fd

    .line 1246
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->val$view:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Cells/SharedLinkCell;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_fd

    .line 1251
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v6    # "i":I
    :pswitch_12d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1252
    .local v2, "args":Landroid/os/Bundle;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    long-to-int v9, v10

    neg-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1253
    .local v4, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v4, :cond_16b

    .line 1254
    const-string v8, "user_id"

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1258
    :goto_154
    const-string v8, "msg_id"

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity$10;->val$item:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1259
    new-instance v5, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v5, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1260
    .local v5, "chatActivity":Lorg/telegram/ui/ChatActivity;
    iget-object v8, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1a

    .line 1256
    .end local v5    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    :cond_16b
    const-string v8, "chat_id"

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    neg-long v10, v10

    long-to-int v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_154

    .line 1219
    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_12d
    .end packed-switch

    .line 1233
    :array_182
    .array-data 4
        0x3dcccccd
        0x3f800000    # 1.0f
    .end array-data
.end method
