.class public Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/Utils$CodeBean$Method_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Para"
.end annotation


# instance fields
.field private paratype:Ljava/lang/String;

.field private paravalue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParatype()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->paratype:Ljava/lang/String;

    return-object v0
.end method

.method public getParavalue()Ljava/lang/Object;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->paravalue:Ljava/lang/Object;

    return-object v0
.end method

.method public setParatype(Ljava/lang/String;)V
    .locals 0
    .param p1, "paratype"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->paratype:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setParavalue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "paravalue"    # Ljava/lang/Object;

    .line 204
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->paravalue:Ljava/lang/Object;

    .line 205
    return-void
.end method
