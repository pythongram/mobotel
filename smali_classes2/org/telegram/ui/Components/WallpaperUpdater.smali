.class public Lorg/telegram/ui/Components/WallpaperUpdater;
.super Ljava/lang/Object;
.source "WallpaperUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;
    }
.end annotation


# instance fields
.field private currentPicturePath:Ljava/lang/String;

.field private currentWallpaperPath:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

.field private parentActivity:Landroid/app/Activity;

.field private picturePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wallpaperUpdaterDelegate"    # Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->picturePath:Ljava/io/File;

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WallpaperUpdater;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/WallpaperUpdater;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WallpaperUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/WallpaperUpdater;)Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WallpaperUpdater;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 104
    return-void
.end method

.method public getCurrentPicturePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWallpaperPath()Ljava/io/File;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 119
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3d

    .line 120
    const/16 v5, 0xa

    if-ne p1, v5, :cond_5f

    .line 121
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v2

    .line 125
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_44
    .catchall {:try_start_e .. :try_end_27} :catchall_53

    .line 127
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_27
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x57

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 128
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    iget-object v6, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-interface {v5, v6, v0}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_9d
    .catchall {:try_start_27 .. :try_end_35} :catchall_9a

    .line 133
    if-eqz v4, :cond_3a

    .line 134
    :try_start_37
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3e

    :cond_3a
    move-object v3, v4

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "screenSize":Landroid/graphics/Point;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_3b
    :goto_3b
    iput-object v10, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    .line 156
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_3d
    :goto_3d
    return-void

    .line 136
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "screenSize":Landroid/graphics/Point;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_3e
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 139
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3b

    .line 129
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "screenSize":Landroid/graphics/Point;
    :catch_44
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_45
    :try_start_45
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    .line 133
    if-eqz v3, :cond_3b

    .line 134
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3b

    .line 136
    :catch_4e
    move-exception v1

    .line 137
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_53
    move-exception v5

    .line 133
    :goto_54
    if-eqz v3, :cond_59

    .line 134
    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    .line 138
    :cond_59
    :goto_59
    throw v5

    .line 136
    :catch_5a
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_59

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_5f
    const/16 v5, 0xb

    if-ne p1, v5, :cond_3d

    .line 142
    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 146
    :try_start_6b
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v2

    .line 147
    .restart local v2    # "screenSize":Landroid/graphics/Point;
    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x57

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    iget-object v6, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-interface {v5, v6, v0}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_94} :catch_95

    goto :goto_3d

    .line 151
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "screenSize":Landroid/graphics/Point;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_95
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "screenSize":Landroid/graphics/Point;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_9a
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_54

    .line 129
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_9d
    move-exception v1

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_45
.end method

.method public setCurrentPicturePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public showAlert(Z)V
    .registers 11
    .param p1, "fromTheme"    # Z

    .prologue
    const v8, 0x7f0700fe

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    if-eqz p1, :cond_54

    .line 57
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, "FromCamera"

    const v3, 0x7f07025e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "FromGalley"

    const v3, 0x7f070265

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "SelectColor"

    const v3, 0x7f0704d1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Default"

    const v3, 0x7f0701c5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "Cancel"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 61
    .local v1, "items":[Ljava/lang/CharSequence;
    :goto_48
    new-instance v2, Lorg/telegram/ui/Components/WallpaperUpdater$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/WallpaperUpdater$1;-><init>(Lorg/telegram/ui/Components/WallpaperUpdater;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 100
    return-void

    .line 59
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_54
    new-array v1, v7, [Ljava/lang/CharSequence;

    const-string v2, "FromCamera"

    const v3, 0x7f07025e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "FromGalley"

    const v3, 0x7f070265

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Cancel"

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .restart local v1    # "items":[Ljava/lang/CharSequence;
    goto :goto_48
.end method
