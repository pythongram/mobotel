.class Lorg/telegram/ui/DocumentSelectActivity$9;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$9;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 501
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 502
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    .line 504
    :goto_11
    return v0

    .line 502
    :cond_12
    const/4 v0, 0x1

    goto :goto_11

    .line 504
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 498
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/DocumentSelectActivity$9;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method