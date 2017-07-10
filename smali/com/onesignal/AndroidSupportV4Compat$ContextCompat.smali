.class Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;
.super Ljava/lang/Object;
.source "AndroidSupportV4Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/AndroidSupportV4Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 51
    :goto_c
    return v1

    .line 49
    :catch_d
    move-exception v0

    .line 50
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "OneSignal"

    const-string v2, "checkSelfPermission failed, returning PERMISSION_DENIED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, -0x1

    goto :goto_c
.end method

.method static getColor(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_b

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 58
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_a
.end method
