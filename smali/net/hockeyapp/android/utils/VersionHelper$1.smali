.class Lnet/hockeyapp/android/utils/VersionHelper$1;
.super Ljava/lang/Object;
.source "VersionHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/utils/VersionHelper;->sortVersions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/utils/VersionHelper;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/utils/VersionHelper;)V
    .registers 2
    .param p1, "this$0"    # Lnet/hockeyapp/android/utils/VersionHelper;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/utils/VersionHelper$1;->this$0:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 72
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lnet/hockeyapp/android/utils/VersionHelper$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .registers 6
    .param p1, "object1"    # Lorg/json/JSONObject;
    .param p2, "object2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 75
    :try_start_1
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "version"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_10

    move-result v1

    if-le v0, v1, :cond_f

    .line 82
    :cond_f
    :goto_f
    return v2

    .line 79
    :catch_10
    move-exception v0

    goto :goto_f

    .line 78
    :catch_12
    move-exception v0

    goto :goto_f
.end method
