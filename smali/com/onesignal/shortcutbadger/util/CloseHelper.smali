.class public Lcom/onesignal/shortcutbadger/util/CloseHelper;
.super Ljava/lang/Object;
.source "CloseHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 15
    if-eqz p0, :cond_b

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 16
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_b
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 23
    if-eqz p0, :cond_5

    .line 24
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 29
    :cond_5
    :goto_5
    return-void

    .line 26
    :catch_6
    move-exception v0

    goto :goto_5
.end method
