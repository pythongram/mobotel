.class Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

.field final synthetic val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter$1;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    .prologue
    .line 252
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x1

    .line 255
    if-nez p2, :cond_f8

    .line 257
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v9, :cond_ac

    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-nez v9, :cond_ac

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 260
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 262
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4a
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v9

    const-string v10, "default_theme.attheme"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v1, "currentFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 265
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_56
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_8d
    .catchall {:try_start_56 .. :try_end_5b} :catchall_9e

    .line 266
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_66} :catch_1a1
    .catchall {:try_start_5b .. :try_end_66} :catchall_19d

    .line 271
    if-eqz v8, :cond_6b

    .line 272
    :try_start_68
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_85

    :cond_6b
    move-object v7, v8

    .line 283
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    :cond_6c
    :goto_6c
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v4, "finalFile":Ljava/io/File;
    :try_start_7e
    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_f3

    move-result v9

    if-nez v9, :cond_c5

    .line 324
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v4    # "finalFile":Ljava/io/File;
    :cond_84
    :goto_84
    return-void

    .line 274
    .restart local v1    # "currentFile":Ljava/io/File;
    .restart local v6    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_85
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "tmessage"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 277
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_6c

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_8d
    move-exception v2

    .line 268
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_8e
    :try_start_8e
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_9e

    .line 271
    if-eqz v7, :cond_6c

    .line 272
    :try_start_93
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_6c

    .line 274
    :catch_97
    move-exception v2

    .line 275
    const-string v9, "tmessage"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    .line 270
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_9e
    move-exception v9

    .line 271
    :goto_9f
    if-eqz v7, :cond_a4

    .line 272
    :try_start_a1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 276
    :cond_a4
    :goto_a4
    throw v9

    .line 274
    :catch_a5
    move-exception v2

    .line 275
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "tmessage"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a4

    .line 278
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_ac
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v9, :cond_bb

    .line 279
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .restart local v1    # "currentFile":Ljava/io/File;
    goto :goto_6c

    .line 281
    .end local v1    # "currentFile":Ljava/io/File;
    :cond_bb
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "currentFile":Ljava/io/File;
    goto :goto_6c

    .line 288
    .restart local v4    # "finalFile":Ljava/io/File;
    :cond_c5
    :try_start_c5
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "text/xml"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v9, "android.intent.extra.STREAM"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    const-string v10, "ShareFile"

    const v11, 0x7f0704fe

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    const/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_f2} :catch_f3

    goto :goto_84

    .line 292
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_f3
    move-exception v2

    .line 293
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_84

    .line 295
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "finalFile":Ljava/io/File;
    :cond_f8
    if-ne p2, v10, :cond_13d

    .line 296
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->access$300(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    if-eqz v9, :cond_84

    .line 297
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 298
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->access$400(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 299
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->access$500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 300
    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {v9}, Lorg/telegram/ui/Components/ThemeEditorView;-><init>()V

    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v10, v10, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 303
    :cond_13d
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_84

    .line 306
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v9, "DeleteThemeAlert"

    const v10, 0x7f0701db

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 308
    const-string v9, "AppName"

    const v10, 0x7f070092

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 309
    const-string v9, "Delete"

    const v10, 0x7f0701c7

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;)V

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 321
    const-string v9, "Cancel"

    const v10, 0x7f0700fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 322
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ThemeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_84

    .line 270
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v1    # "currentFile":Ljava/io/File;
    .restart local v6    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catchall_19d
    move-exception v9

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_9f

    .line 267
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_1a1
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_8e
.end method
