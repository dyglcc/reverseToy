.class Lcom/reverse/stub/Utils$CodeBean$StaticField;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/Utils$CodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticField"
.end annotation


# instance fields
.field private fieldName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/reverse/stub/Utils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/reverse/stub/Utils$1;

    .line 153
    invoke-direct {p0}, Lcom/reverse/stub/Utils$CodeBean$StaticField;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/reverse/stub/Utils$CodeBean$StaticField;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/reverse/stub/Utils$CodeBean$StaticField;->fieldName:Ljava/lang/String;

    .line 164
    return-void
.end method
