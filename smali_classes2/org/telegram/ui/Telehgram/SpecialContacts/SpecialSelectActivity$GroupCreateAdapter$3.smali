.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;
.super Ljava/lang/Object;
.source "SpecialSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    .prologue
    .line 1014
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->val$users:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$3002(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$3102(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 1020
    return-void
.end method
