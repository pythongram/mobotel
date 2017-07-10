.class Lorg/telegram/ui/PhotoViewer$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 1324
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenMenu()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1551
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1552
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 1553
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1562
    .end local v0    # "f":Ljava/io/File;
    :cond_1c
    :goto_1c
    return v2

    .line 1556
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 1557
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v4

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eqz v1, :cond_40

    move v1, v2

    :goto_34
    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 1558
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .end local v0    # "f":Ljava/io/File;
    :cond_3e
    move v2, v3

    .line 1562
    goto :goto_1c

    :cond_40
    move v1, v3

    .line 1557
    goto :goto_34
.end method

.method public onItemClick(I)V
    .registers 25
    .param p1, "id"    # I

    .prologue
    .line 1327
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3e

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1329
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x0

    # invokes: Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V
    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 1547
    :cond_33
    :goto_33
    return-void

    .line 1332
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_33

    .line 1333
    :cond_3e
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_11d

    .line 1334
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6e

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_33

    .line 1339
    :cond_6e
    const/16 v17, 0x0

    .line 1340
    .local v17, "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_bc

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v17

    .line 1346
    :cond_88
    :goto_88
    if-eqz v17, :cond_e2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 1347
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_e0

    const/4 v2, 0x1

    :goto_b5
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 1342
    :cond_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-eqz v2, :cond_de

    const/4 v2, 0x1

    :goto_d9
    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v17

    goto :goto_88

    :cond_de
    const/4 v2, 0x0

    goto :goto_d9

    .line 1347
    :cond_e0
    const/4 v2, 0x0

    goto :goto_b5

    .line 1349
    :cond_e2
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1350
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1351
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1352
    const-string v2, "PleaseDownload"

    const v3, 0x7f07045b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto/16 :goto_33

    .line 1355
    .end local v10    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v17    # "f":Ljava/io/File;
    :cond_11d
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_19d

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_137

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_33

    .line 1358
    :cond_137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentDialogId:J
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$5002(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1360
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1361
    .local v9, "args2":Landroid/os/Bundle;
    const-string v2, "dialog_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentDialogId:J
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v4

    invoke-virtual {v9, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1362
    new-instance v21, Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Lorg/telegram/ui/MediaActivity;-><init>(Landroid/os/Bundle;)V

    .line 1363
    .local v21, "mediaActivity":Lorg/telegram/ui/MediaActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_181

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1366
    :cond_181
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_33

    .line 1369
    .end local v9    # "args2":Landroid/os/Bundle;
    .end local v21    # "mediaActivity":Lorg/telegram/ui/MediaActivity;
    :cond_19d
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_33

    .line 1402
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_38d

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1406
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1407
    .restart local v10    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_315

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_315

    .line 1408
    const-string v2, "AreYouSureDeleteVideo"

    const v3, 0x7f0700ac

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1414
    :goto_1e5
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1416
    const/4 v2, 0x1

    new-array v15, v2, [Z

    .line 1417
    .local v15, "deleteForAll":[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_2ec

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v20, v0

    .line 1419
    .local v20, "lower_id":I
    if-eqz v20, :cond_2ec

    .line 1422
    if-lez v20, :cond_34f

    .line 1423
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 1424
    .local v14, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v12, 0x0

    .line 1429
    .local v12, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_21e
    if-nez v14, :cond_226

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2ec

    .line 1430
    :cond_226
    const/16 v19, 0x0

    .line 1431
    .local v19, "hasOutgoing":Z
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v13

    .line 1432
    .local v13, "currentDate":I
    if-eqz v14, :cond_23a

    iget v2, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_23c

    :cond_23a
    if-eqz v12, :cond_2ec

    .line 1433
    :cond_23c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_25a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_2ec

    :cond_25a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_2ec

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int v2, v13, v2

    const v3, 0x2a300

    if-gt v2, v3, :cond_2ec

    .line 1434
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1435
    .local v18, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v11, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v11, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 1436
    .local v11, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1437
    if-eqz v12, :cond_361

    .line 1438
    const-string v2, "DeleteForAll"

    const v3, 0x7f0701d3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1442
    :goto_2b2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_37d

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_2bc
    const/4 v4, 0x0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_385

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_2c7
    const/4 v5, 0x0

    invoke-virtual {v11, v2, v4, v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPadding(IIII)V

    .line 1443
    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    new-instance v2, Lorg/telegram/ui/PhotoViewer$4$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lorg/telegram/ui/PhotoViewer$4$1;-><init>(Lorg/telegram/ui/PhotoViewer$4;[Z)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1458
    .end local v11    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v12    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v13    # "currentDate":I
    .end local v14    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v18    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v19    # "hasOutgoing":Z
    .end local v20    # "lower_id":I
    :cond_2ec
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$4$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lorg/telegram/ui/PhotoViewer$4$2;-><init>(Lorg/telegram/ui/PhotoViewer$4;[Z)V

    invoke-virtual {v10, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1529
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto/16 :goto_33

    .line 1409
    .end local v15    # "deleteForAll":[Z
    :cond_315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_33e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v2

    if-eqz v2, :cond_33e

    .line 1410
    const-string v2, "AreYouSure"

    const v3, 0x7f0700a2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1e5

    .line 1412
    :cond_33e
    const-string v2, "AreYouSureDeletePhoto"

    const v3, 0x7f0700aa

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1e5

    .line 1426
    .restart local v15    # "deleteForAll":[Z
    .restart local v20    # "lower_id":I
    :cond_34f
    const/4 v14, 0x0

    .line 1427
    .restart local v14    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move/from16 v0, v20

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .restart local v12    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    goto/16 :goto_21e

    .line 1440
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .restart local v13    # "currentDate":I
    .restart local v18    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v19    # "hasOutgoing":Z
    :cond_361
    const-string v2, "DeleteForUser"

    const v3, 0x7f0701d4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2b2

    .line 1442
    :cond_37d
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_2bc

    :cond_385
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto/16 :goto_2c7

    .line 1531
    .end local v10    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v11    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v12    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v13    # "currentDate":I
    .end local v14    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v15    # "deleteForAll":[Z
    .end local v18    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v19    # "hasOutgoing":Z
    .end local v20    # "lower_id":I
    :cond_38d
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_39c

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->onSharePressed()V
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)V

    goto/16 :goto_33

    .line 1533
    :cond_39c
    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_3c6

    .line 1535
    :try_start_3a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_3a2 .. :try_end_3be} :catch_3c0

    goto/16 :goto_33

    .line 1537
    :catch_3c0
    move-exception v16

    .line 1538
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1540
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_3c6
    const/16 v2, 0xd

    move/from16 v0, p1

    if-ne v0, v2, :cond_33

    .line 1541
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_33

    .line 1544
    new-instance v22, Lorg/telegram/ui/Components/StickersAlert;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Photo;)V

    .line 1545
    .local v22, "stickersAlert":Lorg/telegram/ui/Components/StickersAlert;
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    goto/16 :goto_33
.end method
