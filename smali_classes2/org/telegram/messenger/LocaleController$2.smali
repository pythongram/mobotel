.class Lorg/telegram/messenger/LocaleController$2;
.super Ljava/lang/Object;
.source "LocaleController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocaleController;->applyLanguageFile(Ljava/io/File;)Z
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
        "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocaleController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocaleController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 449
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 449
    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    check-cast p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LocaleController$2;->compare(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .registers 5
    .param p1, "o"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "o2"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .prologue
    .line 452
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 453
    const/4 v0, -0x1

    .line 457
    :goto_5
    return v0

    .line 454
    :cond_6
    iget-object v0, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 455
    const/4 v0, 0x1

    goto :goto_5

    .line 457
    :cond_c
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method
