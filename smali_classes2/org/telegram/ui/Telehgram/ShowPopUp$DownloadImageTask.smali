.class Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "ShowPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/ShowPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field bmImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShowPopUp;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/ShowPopUp;Landroid/widget/ImageView;)V
    .registers 3
    .param p2, "bmImage"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;->this$0:Lorg/telegram/ui/Telehgram/ShowPopUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 70
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 71
    .local v3, "urldisplay":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "mIcon11":Landroid/graphics/Bitmap;
    :try_start_4
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 74
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v2

    .line 79
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_11
    return-object v2

    .line 75
    :catch_12
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 62
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/ShowPopUp$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
